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
            res.view();

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

        var view = req.xhr ? 'list' : 'index';
        var query = User.find();

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

            User.findOne(req.param('id'), function(err, user) {
                res.view({
                    user: user
                });
            });

        } else {
            var data = req.param('user');
            data.active = data.active === 'on' ? true : false;

            User.update(req.param('id'), data).exec(function(err, updated) {
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

        User.findOne(req.param('id'), function(err, user) {
            res.view({user: user});
        });
    }
};