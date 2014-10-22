/**
 * Created by ThaoHa.
 * Email: havanthao93@gmail.com
 */

module.exports = function(req, res, next) {
    var isAdmin = req.user.admin || false;

    if (req.isAuthenticated() && isAdmin) {
        return next();
    } else {
        return res.redirect('/login');
    }
};