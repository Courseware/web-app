Courseware.SessionController = Ember.Controller.extend
  email: null
  password: null
  adapterBinding: 'store.adapter'
  notificationsBinding: 'namespace.notifications'

  isDisabled: (->
    !@get('email') || !@get('password')
  ).property('email', 'password')

  login: ->
    ctrl = @
    url = @adapter.buildURL('oauth/authenticate')

    # Remove API version
    url = url.replace('v1/', '')

    @adapter.ajax url, 'POST',
      async: false
      context: @
      data:
        email: @get('email')
        password: @get('password')
        client_id: @adapter.get('client_id')

      success: (json) ->
        if !json['error'] && json['access_token']
          ctrl.namespace.set('access_token', json['access_token'])
          ctrl.notifications.pushObject
            className: 'success'
            message: 'Authentication succeeded.'
          ctrl.transitionToRoute('index')

      error: (xhr) ->
        ctrl.notifications.pushObject
          className: 'alert'
          message: 'Authentication failed. Please try again.'

    ctrl.set('email', null)
    ctrl.set('password', null)
