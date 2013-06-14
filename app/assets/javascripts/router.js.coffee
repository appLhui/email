Email.Router.map (match)->
  @resource 'Gettingmails',->
      @resource 'Gettingmail',{path: ':Gettingmail_id' }
  @resource 'Havemails',->
    @resource 'Havemail',{path: ':Havemail_id' }
  @resource 'Newmail'

