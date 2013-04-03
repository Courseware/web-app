Courseware.SessionController = Ember.ObjectController.extend
  email: null
  password: null

  isDisabled: (->
    !@get('email') || !@get('password')
  ).property('email', 'password')

  login: ->
    # TODO: POST /oauth/authenticate
    console.log @get('email'), @get('password')
