Courseware.Router.reopen
  rootURL: '/'

Courseware.Router.map ->
  @resource 'session', ->
    @route 'new'
    @route 'end'
  @route 'user'
  @resource 'classroom', ->
   @route 'index'
   @route 'show', { path: ':classroom_id' }
   @route 'collaborators', { path: ':classroom_id/collaborators' }
   @route 'timeline', { path: ':classroom_id/timeline' }
   @route 'syllabus', { path: ':classroom_id/syllabus' }
