Courseware.Router.reopen
  rootURL: '/'

Courseware.Router.map ->
  @route 'sign_in'
  @route 'user'
  @resource 'classrooms', ->
   @route 'index', { path: '' }
   @route 'show', { path: ':classroom_id' }
   @resource 'syllabus', { path: ':classroom_id/syllabus' }
