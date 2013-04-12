Courseware.ClassroomIndexRoute = Auth.Route.extend
  model: ->
    Courseware.Classroom.find()

Courseware.ClassroomShowRoute = Auth.Route.extend
  model: (params) ->
    Courseware.Classroom.find(params.classroom_id)

Courseware.ClassroomCollaboratorRoute = Auth.Route.extend
  model: (params) ->
    Courseware.Collaborator.find(params.classroom_id)

Courseware.ClassroomTimelineRoute = Auth.Route.extend
  model: (params) ->
    Courseware.Timeline.find(params.classroom_id)

Courseware.ClassroomSyllabusRoute = Ember.Route.extend
  model: (params) ->
    Courseware.Syllabus.find({classroom_id: params.classroom_id})
