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
    }
};