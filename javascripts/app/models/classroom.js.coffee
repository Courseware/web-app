Courseware.Classroom = DS.Model.extend
  description: DS.attr('string')
  title: DS.attr('string')

  # Database relations
  owners: DS.belongsTo('Courseware.User')
