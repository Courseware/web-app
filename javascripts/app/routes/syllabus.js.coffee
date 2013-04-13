Courseware.SyllabusRoute = Ember.Route.extend
  model: (params) ->
    Courseware.Classroom.find(params.classroom_id)

  setupController: (controller, model) ->
    syllabus = Courseware.Syllabus.find({classroom_id: model.get('id')})
    syllabus.set('classroom', model)
    controller.set 'content', syllabus
