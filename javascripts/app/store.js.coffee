Courseware.Store = DS.Store.extend
  revision: 11
  adapter: Courseware.RESTAdapter.create
    bulkCommit: false
    # API End-point namespace
    url: 'http://api.coursewa.re'
    namespace: 'v1'
