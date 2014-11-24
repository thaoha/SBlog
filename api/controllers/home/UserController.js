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

        if (req.method != 'POST') {
            if (req.isAuthenticated()) {
                return res.redirect('/');
            }
            res.view();

        } else {
            passport.authenticate('local', function(err, user, info) {
                if (err || !user) {
                    res.view({message: 'Something went wrong'});
                } else {
                    req.logIn(user, function(err) {
                        res.redirect('/');
                    });
                }
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
        res.redirect('/');
    },

    /**
     * Sign up action
     *
     * @param req
     * @param res
     */
    signup: function(req, res) {

        if (req.method != 'POST') {
            res.view();

        } else {
            var data = req.allParams();

            User.create(data, function(err, newUser) {
                if (err) {
                    res.view({message: 'Something went wrong'});
                } else {
                    Blog.create({title: newUser.name, admin: newUser}, function(error, blog) {
                        req.logIn(newUser, function(err) {
                            res.redirect('/');
                        });
                    });
                }
            });
        }
    },

    _config: {}
};