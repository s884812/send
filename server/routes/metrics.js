const fetch = require('node-fetch');
const config = require('../config');
const pkg = require('../../package.json');

function prepareEvent(event, ua, language, session_id, deltaT, ip) {
  const ep = event.event_properties || {};
  const up = event.user_properties || {};
  const event_properties = {
    browser: ua.browser.name,
    browser_version: ua.browser.version,
    size: ep.size,
    numFiles: ep.numFiles,
    dlimit: ep.dlimit,
    timeLimit: ep.timeLimit,
    hasPassword: ep.hasPassword,
    reason: ep.reason,
    err: ep.err,
    timeLeft: ep.timeLeft,
    speed: ep.speed,
    dtotal: ep.dtotal,
    path: ep.path,
    source: ep.source
  };
  const user_properties = {
    account: up.account,
    first_action: up.first_action,
    current_uploads: up.current_uploads
  };
  return {
    user_id: event.user_id,
    device_id: event.device_id,
    ip,
    session_id,
    language,
    app_version: pkg.version,
    time: event.time + deltaT,
    event_type: event.event_type,
    os_name: ua.os.name,
    os_version: ua.os.version,
    event_properties,
    user_properties
  };
}

module.exports = async function(req, res) {
  try {
    const data = req.body;
    const deltaT = Date.now() - data.now;
    const events = data.events.map(e =>
      prepareEvent(
        e,
        req.ua,
        data.lang,
        data.session_id + deltaT,
        deltaT,
        req.ip
      )
    );
    const result = await fetch('https://api.amplitude.com/batch', {
      method: 'POST',
      headers: { 'Content-Type': 'application/json' },
      body: JSON.stringify({
        api_key: config.amplitude_id,
        events
      })
    });
    res.sendStatus(result.status);
  } catch (e) {
    res.sendStatus(500);
  }
};
