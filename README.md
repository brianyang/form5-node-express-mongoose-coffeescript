# Node base with Express, Mongoose, and CoffeeScript

## skeleton with methods
- returning json
- proxy APIs

* implement some form of OAuth

## details

- Object modeling for MongoDB using [Mongoose](http://mongoosejs.com/).
- [Passport.js](http://passportjs.org/) for user authentication.
- [Twitter Bootstrap](http://twitter.github.io/bootstrap/), to jumpstart your UI development.
- [connect-assets](https://github.com/adunkman/connect-assets) for serving CSS, Javascript and images to the client supporting Coffeescript and LESS on the fly.
- [connect-flash](https://github.com/jaredhanson/connect-flash) for helpful error/notice messages.
- [connect-mongo](https://github.com/kcbanner/connect-mongo) for persistent session storage.
- Coffeescript linting using [Grunt](http://gruntjs.com/).
- [node-dev](https://github.com/fgnass/node-dev), an awesome development tool for Node.js that automatically restarts your node process when a script is modified. It also has useful growl notifications:


## File structure
```
-app/
  |--controllers/
  |--models/
  |--views/
  |__helpers/ (template helper functions)
-config/
  |--routes.coffee
  |--environment.coffee
  |--passport.coffee (auth config)
  |--express.coffee (express.js config)
  |--middlewares/ (custom middlewares)
-assets/ (Client side assets)
  |--css/ (supports LESS)
  |--js/ (supports Coffescript)
  |--img/
-bin/
  |__devserver (Shell script for firing up node-dev)
--server.js
```

