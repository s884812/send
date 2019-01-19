import storage from './storage';
import { arrayToB64 } from './utils';

let appState = null;
// let experiment = null;
const events = [];
const session_id = Date.now();
const lang = document.querySelector('html').lang;
const anonId = arrayToB64(crypto.getRandomValues(new Uint8Array(16)));

export default function initialize(state, emitter) {
  appState = state;
  if (!appState.user.firstAction) {
    appState.user.firstAction = category() === 'sender' ? 'upload' : 'download';
  }
  emitter.on('DOMContentLoaded', () => {
    addExitHandlers();
    // experiment = storage.enrolled[0];
    addEvent(category(), 'visit', {
      cm5: storage.totalUploads,
      cm6: storage.files.length,
      cm7: storage.totalDownloads
    });
  });
  emitter.on('exit', exitEvent);
  emitter.on('experiment', experimentEvent);
  window.addEventListener('unload', submitEvents);
}

function category() {
  switch (appState.route) {
    case '/':
    case '/share/:id':
      return 'sender';
    case '/download/:id/:key':
    case '/download/:id':
    case '/completed':
      return 'recipient';
    default:
      return 'other';
  }
}

function sizeOrder(n) {
  return Math.floor(Math.log10(n));
}

function submitEvents() {
  if (navigator.doNotTrack === '1') {
    return;
  }
  const data = new Blob(
    [
      JSON.stringify({
        now: Date.now(),
        session_id,
        lang,
        events
      })
    ],
    { type: 'application/json' }
  );
  events.splice(0);
  if (!navigator.sendBeacon) {
    return;
  }
  navigator.sendBeacon('/api/metrics', data);
}

function addEvent(category, type, info) {
  events.push({
    time: Date.now(),
    event_type: type,
    user_id: appState.user.id,
    device_id: appState.user.loggedIn ? storage.id : anonId,
    user_properties: {
      account: appState.user.loggedIn,
      first_action: appState.user.firstAction,
      current_uploads: storage.files.length
    },
    event_properties: info
  });
  if (events.length === 25) {
    submitEvents();
  }
}

function urlToMetric(url) {
  switch (url) {
    case 'https://www.mozilla.org/':
      return 'mozilla';
    case 'https://www.mozilla.org/about/legal':
      return 'legal';
    case 'https://testpilot.firefox.com/about':
      return 'about';
    case 'https://testpilot.firefox.com/privacy':
      return 'privacy';
    case 'https://testpilot.firefox.com/terms':
      return 'terms';
    case 'https://www.mozilla.org/privacy/websites/#cookies':
      return 'cookies';
    case 'https://github.com/mozilla/send':
      return 'github';
    case 'https://twitter.com/FxTestPilot':
      return 'twitter';
    case 'https://www.mozilla.org/firefox/new/?scene=2':
      return 'download-firefox';
    case 'https://qsurvey.mozilla.com/s3/txp-firefox-send':
      return 'survey';
    case 'https://www.mozilla.org/firefox/new/?utm_campaign=send-acquisition&utm_medium=referral&utm_source=send.firefox.com':
      return 'promo';
    default:
      return 'other';
  }
}

function startedUpload(archive) {
  return addEvent('sender', 'upload-started', {
    size: sizeOrder(archive.size),
    numFiles: archive.numFiles,
    dlimit: archive.dlimit,
    timeLimit: archive.timeLimit,
    hasPassword: !!archive.password
  });
}

function cancelledUpload(archive) {
  return addEvent('sender', 'upload-stopped', {
    size: sizeOrder(archive.size),
    numFiles: archive.numFiles,
    dlimit: archive.dlimit,
    timeLimit: archive.timeLimit,
    hasPassword: !!archive.password,
    reason: 'canceled'
  });
}

function completedUpload(archive) {
  return addEvent('sender', 'upload-stopped', {
    size: sizeOrder(archive.size),
    numFiles: archive.numFiles,
    dlimit: archive.dlimit,
    timeLimit: archive.timeLimit,
    hasPassword: !!archive.password,
    reason: 'completed'
  });
}

function stoppedUpload({ archive, err }) {
  return addEvent('sender', 'upload-stopped', {
    size: sizeOrder(archive.size),
    numFiles: archive.numFiles,
    dlimit: archive.dlimit,
    timeLimit: archive.timeLimit,
    hasPassword: !!archive.password,
    reason: 'errored',
    err: err.message
  });
}

function startedDownload(params) {
  return addEvent('recipient', 'download-started', {
    size: sizeOrder(params.size),
    timeLeft: params.ttl
  });
}

function stoppedDownload(params) {
  return addEvent('recipient', 'download-stopped', {
    size: sizeOrder(params.size),
    reason: 'errored',
    err: params.err
  });
}

function completedDownload(params) {
  return addEvent('recipient', 'download-stopped', {
    size: sizeOrder(params.size),
    speed: params.speed,
    reason: 'completed'
  });
}

function deletedUpload(ownedFile) {
  return addEvent(category(), 'upload-deleted', {
    size: sizeOrder(ownedFile.size),
    dlimit: ownedFile.dlimit,
    dtotal: ownedFile.dtotal,
    timeLimit: ownedFile.timeLimit,
    timeLeft: ownedFile.expiresAt - Date.now(),
    hasPassword: ownedFile.hasPassword
  });
}

function copiedLink(params) {
  return addEvent('sender', 'copied', {
    cd4: params.location
  });
}

function exitEvent(target) {
  return addEvent(category(), 'exited', {
    path: urlToMetric(target.currentTarget.href)
  });
}

function experimentEvent(params) {
  return addEvent(category(), 'experiment', params);
}

function triggeredSignup(params) {
  return addEvent(category(), 'signup-triggered', {
    source: params.source
  });
}

function submittedSignup(params) {
  return addEvent(category(), 'signup-submitted', {
    source: params.source
  });
}

function canceledSignup(params) {
  return addEvent(category(), 'signup-canceled', {
    source: params.source
  });
}

function signedIn() {
  return addEvent(category(), 'signin-completed', {});
}

function loggedOut() {
  return addEvent(category(), 'logout', {});
}

// eslint-disable-next-line no-unused-vars
function addExitHandlers() {
  const links = Array.from(document.querySelectorAll('a'));
  links.forEach(l => {
    if (/^http/.test(l.getAttribute('href'))) {
      l.addEventListener('click', exitEvent);
    }
  });
}

function restart(state) {
  return addEvent(category(), 'restarted', {
    cd2: state
  });
}

export {
  copiedLink,
  startedUpload,
  cancelledUpload,
  stoppedUpload,
  completedUpload,
  deletedUpload,
  startedDownload,
  stoppedDownload,
  completedDownload,
  restart,
  triggeredSignup,
  submittedSignup,
  canceledSignup,
  signedIn,
  loggedOut
};
