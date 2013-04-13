Courseware.Router.reopen
  rootURL: '/'

Courseware.Router.map ->
  @route 'sign_in'
  @route 'user'
  @resource 'classrooms', ->
   @route 'index', { path: '' }
   @route 'show', { path: ':classroom_id' }
