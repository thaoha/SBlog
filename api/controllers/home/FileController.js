/**
 * Created by ThaoHa on 11/21/2014.
 */

module.exports = {

    index: function(req, res) {

    },

    /**
     * Serve static file
     *
     * @param req
     * @param res
     */
    get: function(req, res) {
        res.sendfile('.tmp/' + req.path.substr(1));
    }
};