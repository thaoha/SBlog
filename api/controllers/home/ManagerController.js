/**
 * Created by ThaoHa.
 * Email: havanthao93@gmail.com
 */

module.exports = {

    index: function (req, res) {

        res.view({
            user: req.user
        });
    },

    /**
     * Post manager
     *
     * @param req
     * @param res
     */
    post: function(req, res) {

        if (req.method != 'POST') {
            res.view({
                user: req.user
            });

        } else {
            res.view({
                message: 'Success'
            });
        }
    },

    /**
     * Member manager
     *
     * @param req
     * @param res
     */
    member: function(req, res) {

        if (req.method != 'POST') {
            res.view({
                user: req.user
            });

        } else {
            res.view({
                message: 'Success'
            });
        }
    },

    /**
     * Setting manager
     *
     * @param req
     * @param res
     */
    setting: function(req, res) {

        if (req.method != 'POST') {
            res.view({
                user: req.user
            });

        } else {
            res.view({
                message: 'Success'
            });
        }
    }
};