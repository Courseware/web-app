//= require handlebars
//= require ember
//= require ember-data
//= require ember-auth

//= require_self
//= require ./adapter
//= require ./store
//= require_tree ./models
//= require_tree ./controllers
//= require_tree ./templates
//= require_tree ./views
//= require_tree ./routes
//= require ./router
//= require ./auth

window.Courseware = Ember.Application.create
  app_name: 'The Courseware Project'
  rootElement: '#content'
  notifications: []
  client_id: '75912ad5297229ceb49774f61956668656bd0f47a5ed98ef72f89b1c39a001af'
