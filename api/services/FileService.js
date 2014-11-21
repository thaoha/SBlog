/**
 * Created by ThaoHa on 11/3/2014.
 */

module.exports = {

    /**
     * Upload file
     * @param req
     * @param field
     * @param next
     */
    upload: function(req, opts, next) {

        opts = {
            dirname: opts.dirname || 'other',
            field: opts.field || 'file'
        };

        req.file(opts.field).upload({
            dirname: './' + opts.dirname,
            saveAs: opts.filename

        }, function(err, uploadedFiles) {
            if (!err) {
                try {
                    File.create({
                        path: '/uploads/' + opts.dirname + '/' + uploadedFiles[0].fd.split('\\').pop(),
                        user: req.user
                    }, function(err, newFile) {
                        next(err, newFile);
                    });
                } catch(ex) {
                    next(ex);
                }
            } else {
                next(err);
            }
        });
    }

};