/**
 * Created by ThaoHa.
 * Email: havanthao93@gmail.com
 */

var passport = require("passport");

module.exports = {

    /**
     * Login action
     *
     * @param req
     * @param res
     */
    login: function(req, res) {

        if (req.method === 'GET') {
            if (req.isAuthenticated() && req.user.admin === true) {
                return res.redirect('/admin');
            } else {
                res.view();
            }
        } else {
            passport.authenticate('local', function(err, user, info) {
                if ((err) || (!user)) {
                    res.redirect('/admin/login');
                    return;
                }
                req.logIn(user, function(err) {
                    if (err) res.redirect('/admin/login');
                    return res.redirect('/admin');
                });
            })(req, res);
        }
    },

    /**
     * Logout action
     *
     * @param req
     * @param res
     */
    logout: function (req, res) {
        req.logout();
        res.redirect('/admin/login');
    },

    /**
     * User manager
     *
     * @param req
     * @param res
     */
    index: function(req, res) {

        var view = req.xhr ? '_list' : 'index';
        var query = User.find({admin: false});

        if (typeof req.param('limit') === 'number') {
            query.limit(req.param('limit'));
        }

        if (typeof req.param('active') !== 'undefined' && req.param('active') != 'all') {
            query.where({active: req.param('active') == '1' ? true : false});
        }

        if (typeof req.param('keyword') === 'string' && req.param('keyword') != '') {
            query.where({or: [
                {name: {like: '%' + req.param('keyword') + '%'}},
                {email: {like: '%' + req.param('keyword') + '%'}}
            ]});
        }

        query.exec(function(err, list) {
            res.view('admin/user/' + view, {
                users: list
            });
        });
    },

    /**
     * Create or edit user
     *
     * @param req
     * @param res
     */
    form: function(req, res) {

        if (!req.xhr) {
            User.findOne({id: req.param('id')}).populate('avatar').exec(function(err, user) {
                res.view({
                    user: user
                });
            });

        } else {
            async.waterfall([
                //handle user data
                function(next) {
                    var data = {
                        name: req.param('name'),
                        email: req.param('email'),
                        password: req.param('password'),
                        active: req.param('active') === 'on' ? true : false
                    };

                    FileService.upload(req, {field: 'avatar', dirname: req.user.id}, function(err, newFile) {
                        // if upload avatar error still update another information
                        if (err) sails.log.error(err);
                        else data.avatar = newFile;
                        next(null, data);
                    });
                },

                // save to database
                function(data, next) {
                    // update user info
                    if (typeof req.param('id') !== 'undefined') {
                        User.update(req.param('id'), data).exec(function(err, updated) {
                            next(err, updated);
                        });

                    // create new user
                    } else {
                        User.create(data, function(err, newUser) {
                            if (newUser) {
                                Blog.create({title: newUser.name, admin: newUser}, function(err, blog) {
                                    next(err, newUser);
                                });
                            } else {
                                next(err);
                            }
                        });
                    }
                }

            ], function(err, result) {
                if (err) sails.log.error(err);

                res.json({
                    status: err ? 'warning' : 'success',
                    message: err ? 'Something went wrong' : 'Successfully'
                });
            });
        }
    },

    /**
     * Delete user
     *
     * @param req
     * @param res
     */
    delete: function(req, res) {

        User.destroy(req.param('id'), function(err) {
            res.json(err ? false : true);
        });
    },

    /**
     * View user
     *
     * @param req
     * @param res
     */
    view: function(req, res) {

        User.findOne({id: req.param('id')}, function(err, user) {
            res.view({user: user});
        });
    }
};