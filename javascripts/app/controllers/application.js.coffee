Courseware.ApplicationController = Ember.Controller.extend
  goToLogin: ->
    @transitionToRoute('session.new')
