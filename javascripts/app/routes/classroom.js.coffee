Courseware.ClassroomsIndexRoute = Auth.Route.extend
  model: ->
    Courseware.Classroom.find()

Courseware.ClassroomsShowRoute = Auth.Route.extend
  model: (params) ->
    Courseware.Classroom.find(params.classroom_id)
