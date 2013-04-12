Courseware.UserRoute = Auth.Route.extend
  model: ->
    Courseware.User.find()
