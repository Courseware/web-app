//= require handlebars
//= require ember
//= require ember-data
//= require ../lib/ember-auth

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
  client_id: '763453d6ae9d07183cf8096cf6b58253ac7a806ecdad4eba4dd78adc90652d1f'
