/**
 * Route Mappings
 * (sails.config.routes)
 *
 * Your routes map URLs to views and controllers.
 *
 * If Sails receives a URL that doesn't match any of the routes below,
 * it will check for matching files (images, scripts, stylesheets, etc.)
 * in your assets directory.  e.g. `http://localhost:1337/images/foo.jpg`
 * might match an image file: `/assets/images/foo.jpg`
 *
 * Finally, if those don't match either, the default 404 handler is triggered.
 * See `api/responses/notFound.js` to adjust your app's 404 logic.
 *
 * Note: Sails doesn't ACTUALLY serve stuff from `assets`-- the default Gruntfile in Sails copies
 * flat files from `assets` to `.tmp/public`.  This allows you to do things like compile LESS or
 * CoffeeScript for the front-end.
 *
 * For more information on configuring custom routes, check out:
 * http://sailsjs.org/#/documentation/concepts/Routes/RouteTargetSyntax.html
 */

module.exports.routes = {

    /***************************************************************************
    *                              Home Area                                   *
    ***************************************************************************/

    '/': { controller: 'home/MainController', action: 'index' },

    '/login': { controller: 'home/UserController', action: 'login' },
    '/logout': { controller: 'home/UserController', action: 'logout'},
    '/signup': { controller: 'home/UserController', action: 'signup'},

    'get /tl/:alias/manager': { controller: 'home/ManagerController', action: 'index' },
    '/tl/:alias/post-manager': { controller: 'home/ManagerController', action: 'post' },
    'get /tl/:alias/member-manager': { controller: 'home/ManagerController', action: 'member' },
    'get /tl/:alias/setting-manager': { controller: 'home/ManagerController', action: 'setting' },
    'get /tl/:alias': { controller: 'home/TimelineController', action: 'index' },
    'get /tl/view/:slug': { controller: 'home/TimelineController', action: 'view' },
    'get /uploads/*': {controller: 'home/FileController', action: 'get'},

    /***************************************************************************
    *                             Admin area                                   *
    ***************************************************************************/

    'get /admin': { controller: 'admin/MainController', action: 'index' },

    '/admin/login': { controller: 'admin/UserController', action: 'login' },
    '/admin/logout': { controller: 'admin/UserController', action: 'logout' },

    '/admin/user-view/:id': { controller: 'admin/UserController', action: 'view' },
    '/admin/user-delete/:id': { controller: 'admin/UserController', action: 'delete' }

};
