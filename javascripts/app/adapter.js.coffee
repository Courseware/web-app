Courseware.RESTAdapter = DS.RESTAdapter.reopen
  # Change this if you move the API endpoint url
  url: window.location.protocol + '//' + window.location.host
  # Change this if there's a new version of endpoints
  namespace: 'v1'
  # Change this in production or when thre's a new app ID
  client_id: '7df70da811026b87cbabd3b433811cc605ea2e3ff56111e371c984e4e999a15a'
  access_tokenBinding: 'Courseware.access_token'
  ajax: (url, type, hash) ->
    hash.data = hash.data || {}
    hash.data.access_token = @get('access_token')
    @_super url, type, hash

Courseware.RESTAdapter.configure 'plurals',
  # Do not pluralize authentication endpoint
  'oauth/authenticate': 'oauth/authenticate'
