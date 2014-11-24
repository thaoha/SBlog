/**
 * Created by ThaoHa.
 * Email: havanthao93@gmail.com
 */

module.exports = {

    /**
     * View time line
     *
     * @param req
     * @param res
     */
    index: function (req, res) {
        var alias = req.param('alias') || '';

        async.waterfall([
            function getAdmin(next) {
                User.findOne({alias: alias, active: true}).populate('avatar').exec(function(err, user) {
                    next(err, user);
                });
            },
            function getBlog(admin, next) {
                Blog.findOne({admin: admin.id, active: true}, function(err, blog) {
                    if (blog) blog.admin = admin;
                    if (!err && !blog) err = new Error('Not found');
                    next(err, admin, blog);
                });
            },
            function getPost(admin, blog, next) {
                Post.find({blog: blog.id, published: true}, function(err, posts) {
                    next(err, admin, blog, posts);
                });
            }
        ], function(err, admin, blog, posts) {
            if (err || !blog) {
                res.notFound();
            } else {
                res.view({
                    user: req.user,
                    blog: blog,
                    posts: posts
                });
            }
        });
    }
};