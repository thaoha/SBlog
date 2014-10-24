/**
 * Created by ThaoHa.
 * Email: havanthao93@gmail.com
 */

module.exports = function(req, res, next) {

    if (req.isAuthenticated() && req.user.admin === true) {
        return next();
    } else {
        return res.redirect('/admin/login');
    }
};