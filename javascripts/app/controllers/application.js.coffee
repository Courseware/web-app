Courseware.ApplicationController = Ember.Controller.extend
  goToLogin: ->
    @transitionTo('session.new')
