Auth.Config.reopen
  tokenCreateUrl: '/oauth/authenticate'
  tokenKey: 'access_token'

  # Redirect options
  authRedirect: true
  smartSignInRedirect: true
  signInRoute: 'sign_in'
  signInRedirectFallbackRoute: 'user'

  # RememberMe options
  # TODO: access_token should be loaded from localstorage
  rememberMe: true
  rememberStorage: 'localStorage'
  rememberTokenKey: 'access_token'
