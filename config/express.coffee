express = require('express')
mongoStore = require('connect-mongo')(express)
flash = require('connect-flash')
helpers = require('view-helpers')

module.exports = (app, config, passport) ->

  app.set('showStackError', true)

  app.use(express.compress({
    filter: (req, res) ->
      return /json|text|javascript|css/.test(res.getHeader('Content-Type'));
    level: 9
  }))
  
  app.set('views', config.root + '/app/views')
  app.set('view engine', 'jade')

  app.configure ->
    app.use(helpers(config.app.name))

    app.use(express.cookieParser())

    app.use(express.bodyParser())
    app.use(express.methodOverride())

    app.use(express.session({
      secret: 'noobjs',
      store: new mongoStore({
        url: config.db,
        collection : 'sessions'
      })
    }))

    app.use(flash())

    app.use(passport.initialize())
    app.use(passport.session())

    app.use(express.favicon())

    app.use(app.router)
    
    return

  return