Courseware.Store = DS.Store.extend
  revision: 11
  url: 'http://api.journey.nerd.ro'
  adapter: DS.RESTAdapter.create({ bulkCommit: false })
