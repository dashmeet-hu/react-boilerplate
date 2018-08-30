module.exports = {
  /**
   * Application configuration section
   * http://pm2.keymetrics.io/docs/usage/application-declaration/
   */
  apps : [
    {
      name      : 'ustraa',
      script    : 'npm',
      args: 'start',
      cwd       : './ustraa',
      interpreter: '/root/.nvm/versions/node/v8.11.3/bin'
    }
  ],
};