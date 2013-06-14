Email.HavemailRoute = Ember.Route.extend
  model: (params)->
    Email.Havemail.find(params.Havemail_id)

Email.HavemailsRoute = Ember.Route.extend
  model: ->
    Email.Havemail.find()