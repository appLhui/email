#= require ./store
#= require_tree ./models
#= require_tree ./controllers
#= require_tree ./views
#= require_tree ./helpers
#= require_tree ./templates
#= require_tree ./routes
#= require ./router
#= require_self

Email.IndexRoute = Ember.Route.extend
  redirect: ->
    @transitionTo 'Gettingmails'

Ember.Handlebars.registerBoundHelper 'date', (date) ->
  moment(date).fromNow()
