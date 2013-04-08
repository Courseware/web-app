Courseware.UserRoute = Ember.Route.extend
  model: ->
    users = Courseware.User.find()
    #console.log users.firstObject()
    #users.firstObject()
