Email.DateField = Ember.TextField.extend
  type: 'date'
  hasFocus: false
  init: ->
    @_super()
    @updateValue() if @get('date').toISOString().substring(0, 10)== new Date().toISOString().substring(0, 10)

  updateDate: (->
    if ms = Date.parse(@get('value'))
      @set('date', new Date(ms))
  ).observes('value')

  updateValue: (->
    return if @get('hasFocus')
    date = @get('date')
    if date instanceof Date
      @set('value', date.toISOString().substring(0, 10))
  ).observes('date')

  focusIn: ->
    @set('hasFocus', true)

  focusOut: ->
    @set('hasFocus', false)
    @updateValue()
