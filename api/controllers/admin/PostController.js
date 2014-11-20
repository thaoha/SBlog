/**
 * Created by ThaoHa.
 * Email: havanthao93@gmail.com
 */

module.exports = {

    index: function (req, res) {

        Post.find({}, function(err, list) {
            res.view({
                posts: list
            });
        });
    },

    /**
     * Create or edit post
     *
     * @param req
     * @param res
     */
    form: function(req, res) {

        if (!req.xhr) {
            Post.findOne({id: req.param('id')}).exec(function(err, post) {
                res.view({
                    post: post
                });
            });

        } else {
            res.json(false);
        }
    }
};