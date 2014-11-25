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
    },

    /**
     * View post
     *
     * @param req
     * @param res
     */
    view: function(req, res) {

        var slug = req.param('slug');

        async.waterfall([
            function getPost(next) {
                Post.findOne({slug: slug, published: true}).populate('user').exec(function(err, post) {
                    next(err, post);
                });
            },
            function getComments(post, next) {
                var postId = post == 'undefined' ? null : post.id;
                Comment.find({post: postId}).populate('user').exec(function(err, comments) {
                    next(err, post, comments);
                });
            }
        ], function(err, post, comments) {
            res.view({
                post: post,
                comments: comments,
                user: req.user
            });
        });
    }
};