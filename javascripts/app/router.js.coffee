Courseware.Router.reopen
  rootURL: '/'

Courseware.Router.map ->
  @resource 'session', ->
    @route 'new'
    @route 'end'
