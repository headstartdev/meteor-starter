Router.map ->
  @route "profile",
    path: "/profile"
      
  @route "account",
    path: "/account"

  @route "customer",
    path: "/customer"

  @route "register",
    path: "/register"

  @route "video_lecture",
    path: "/video_lecture"
    layoutTemplate: "side_bar"

  @route "videoc++",
    path: "/videoc++"
    layoutTemplate: "side_bar"

  @route "videoc",
    path: "/videoc"
    layoutTemplate: "side_bar"

  @route "setUserName",
    path: "/setUserName"
    onBeforeAction: ->
      if not Config.username or (Meteor.userId() and Meteor.user().username)
        @redirect '/dashboard'
      @next()

  @route 'signOut',
    path: '/sign-out'
    onBeforeAction: ->
      Meteor.logout ->
      @redirect '/'
      @next()