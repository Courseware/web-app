Auth.Config.reopen
  baseUrl: 'http://api.coursewa.re'
  tokenCreateUrl: '/oauth/authenticate'
  tokenKey: 'access_token'
  urlAuthentication: true

  # Redirect options
  authRedirect: true
  smartSignInRedirect: true
  signInRoute: 'sign_in'

  # RememberMe options
  # TODO: access_token should be loaded from localstorage
  rememberMe: true
  rememberStorage: 'localStorage'
  rememberTokenKey: 'access_token'
