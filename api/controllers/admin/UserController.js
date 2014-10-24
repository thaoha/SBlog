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

        if (!req.xhr) {
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

        User.find({}, function(err, list) {
            res.view({
                users: list
            });
        });
    },

    /**
     * Save user
     *
     * @param req
     * @param res
     */
    save: function(req, res) {

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