/**
 * Created by ThaoHa.
 * Email: havanthao93@gmail.com
 */

module.exports = function(req, res, next){
    if (req.isAuthenticated()){
        return next();
    } else {
        return res.redirect('/login');
    }
}