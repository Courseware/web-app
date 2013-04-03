Courseware.User = DS.Model.extend(
  firstName: DS.attr('string')
  lastName: DS.attr('string')

  fullName: (->
    @get('firstName') + ' ' + @get('lastName')
  ).property('firstName', 'lastName')
)
