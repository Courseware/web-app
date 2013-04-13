Courseware.Router.reopen
  rootURL: '/'

Courseware.Router.map ->
  @route 'sign_in'
  @route 'user'
  @resource 'syllabus', { path: 'classrooms/:classroom_id/syllabus' }
  @resource 'classrooms', ->
   @route 'index', { path: '' }
   @route 'show', { path: ':classroom_id' }
