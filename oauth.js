const searchConsole = require('@googleapis/searchconsole')
const { google } = require('googleapis')

const auth = new searchConsole.auth.GoogleAuth({
    credentials: {
      private_key: process.env.PRIVATE_KEY.replaceAll('\\n', '\n'),
      client_email: process.env.CLIENT_EMAIL,
    },
    scopes: [
      'https://www.googleapis.com/auth/webmasters.readonly',
    ],
  })
  
const client = searchConsole.searchconsole({
    version: 'v1',
    auth,
})

const pagespeed = google.pagespeedonline('v5');

module.exports = {
  client,
  pagespeed
}