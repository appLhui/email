Email.Gettingmail = DS.Model.extend Ember.Validations.Mixin,
  title: DS.attr 'string'
  details: DS.attr 'string'
  createdate: DS.attr 'date',{defaultValue: new Date}
  count:DS.attr 'number'
  validations:
    title:
      presence: true,
      length:
        minimum: 5
    count:
      numericality:
        equalTo:100
    count:
      numericality:
        equalTo:100

  becameInvalid: (manager) ->
    @set 'errors', Ember.Validations.Errors.create(manager.get('errors'))
