Email.GettingmailsRoute = Ember.Route.extend
  model: ->
    Email.Gettingmail.find()

Email.GettingmailRoute = Ember.Route.extend
  model: (params)->
    Email.Gettingmail.find(params.Gettingmail_id)