Courseware.RESTAdapter = DS.RESTAdapter.reopen
  # Change this if you move the API endpoint url
  url: window.location.protocol + '//' + window.location.host
  # Change this if there's a new version of endpoints
  namespace: 'v1'
  # Change this in production or when thre's a new app ID
  client_id: 'd519f45d71fa5a77ece72120659f77baaf5bf419b20d5c03d851e0858ce549be'

Courseware.RESTAdapter.configure 'plurals',
  # Do not pluralize authentication endpoint
  'oauth/authenticate': 'oauth/authenticate'
