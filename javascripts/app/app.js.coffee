//= require handlebars
//= require ember
//= require ember-data

//= require_self
//= require ./adapter
//= require ./store
//= require_tree ./models
//= require_tree ./controllers
//= require_tree ./views
//= require_tree ./routes
//= require_tree ./templates
//= require ./router

window.Courseware = Ember.Application.create
  rootElement: '#content'
  access_token: null
