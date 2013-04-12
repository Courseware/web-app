Courseware.Store = DS.Store.extend
  revision: 11
  adapter: Auth.RESTAdapter.create
    bulkCommit: false
    # API End-point namespace
    url: 'v1'
