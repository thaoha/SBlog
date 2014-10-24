/**
 * Created by ThaoHa.
 * Email: havanthao93@gmail.com
 */

module.exports = {

    index: function (req, res) {

        res.view();
    },

    /**
     * View time line
     *
     * @param req
     * @param res
     */
    timeline: function (req, res) {
        var username = req.param('username') || '';

        async.waterfall([
            function getAdmin(next) {
                User.findOne({username: username}, function(err, user) {
                    next(err, user);
                });
            },
            function getBlog(admin, next) {
                Blog.findOne({admin: admin, active: true}, function(err, blog) {
                    next(err, admin, blog);
                });
            },
            function getPost(admin, blog, next) {
                Post.find({blog: blog, published: true}, function(err, posts) {
                    next(err, admin, blog, posts);
                });
            }
        ], function(err, admin, blog, posts) {
            if (err || !blog) {
                res.notFound();
            } else {
                res.view({
                    admin: admin,
                    blog: blog,
                    posts: posts
                });
            }
        });
    }
};