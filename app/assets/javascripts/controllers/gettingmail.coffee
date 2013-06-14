Email.GettingmailsController = Ember.ObjectController.extend
  refrash:->
    Email.Gettingmail.find()
  search: ''
  searchedContent: (->
    if @get('search')!=''
      regexp = new RegExp @get('search')
      @get('content').filter (item)->
        regexp.test item.get('title')
    else
      @get('content')
  ).property('search')


Email.GettingmailController = Ember.ObjectController.extend
  edit:->
    @get('store').commit() if @get('model').get('isValid')
  cancel:->
    @get("model").get('transaction').rollback() if @get 'isDirty'

