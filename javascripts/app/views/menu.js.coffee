Courseware.MenuView = Ember.View.extend
  classNameBindings: ['isSlided:slided:unslided']
  classNames: ['unslided']
  elementId: 'menu'
  isSlided: false
  templateName: 'app/templates/menu'
  touchStartBinding: 'click'
  touchMoveBinding: 'click'

  click: ->
    @toggleProperty('isSlided')
