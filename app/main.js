/* global DEFAULTS LIMITS LOCALE */
import 'core-js';
import 'fast-text-encoding'; // MS Edge support
import 'fluent-intl-polyfill';
import choo from 'choo';
import nanotiming from 'nanotiming';
import routes from './routes';
import getCapabilities from './capabilities';
import controller from './controller';
import dragManager from './dragManager';
import pasteManager from './pasteManager';
import storage from './storage';
import metrics from './metrics';
import experiments from './experiments';
import Raven from 'raven-js';
import './main.css';
import User from './user';
import { getTranslator } from './locale';
import Archive from './archive';
import { setTranslate } from './utils';

if (navigator.doNotTrack !== '1' && window.RAVEN_CONFIG) {
  Raven.config(window.SENTRY_ID, window.RAVEN_CONFIG).install();
}

if (process.env.NODE_ENV === 'production') {
  nanotiming.disabled = true;
}

(async function start() {
  const capabilities = await getCapabilities();
  if (
    !capabilities.crypto &&
    window.location.pathname !== '/unsupported/crypto'
  ) {
    return window.location.assign('/unsupported/crypto');
  }
  if (capabilities.serviceWorker) {
    try {
      await navigator.serviceWorker.register('/serviceWorker.js');
      await navigator.serviceWorker.ready;
    } catch (e) {
      // continue but disable streaming downloads
      capabilities.streamDownload = false;
    }
  }

  const translate = await getTranslator(LOCALE);
  setTranslate(translate);
  window.initialState = {
    LIMITS,
    DEFAULTS,
    archive: new Archive([], DEFAULTS.EXPIRE_SECONDS),
    capabilities,
    translate,
    storage,
    raven: Raven,
    user: new User(storage, LIMITS, window.AUTH_CONFIG),
    transfer: null,
    fileInfo: null
  };

  const app = routes(choo());
  window.app = app;
  app.use(metrics);
  app.use(controller);
  app.use(dragManager);
  app.use(experiments);
  app.use(pasteManager);
  app.mount('body');
})();
