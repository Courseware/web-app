Courseware.UserRoute = Ember.Route.extend
  model: ->
    Courseware.User.find()
