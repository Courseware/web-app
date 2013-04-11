Courseware.Router.reopen
  rootURL: '/'

Courseware.Router.map ->
  @route 'sign_in'
  @route 'user'
  @resource 'classroom', ->
   @route 'index'
   @route 'show', { path: ':classroom_id' }
   @route 'collaborators', { path: ':classroom_id/collaborators' }
   @route 'timeline', { path: ':classroom_id/timeline' }
