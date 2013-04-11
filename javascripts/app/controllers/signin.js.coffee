Courseware.SignInController = Ember.ObjectController.extend Auth.SignInController,
  email: null
  password: null

  # Disable submit button if email or password field are empty
  isDisabled: (->
    !@get('email') || !@get('password')
  ).property('email', 'password')

  # Authentication method
  signIn: ->
    @registerRedirect()
    Auth.signIn
      email: @get 'email'
      password: @get 'password'
      client_id: Courseware.client_id
