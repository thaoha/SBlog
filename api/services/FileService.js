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
            root: opts.root || 'public',
            dirname: opts.dirname || 'other',
            field: opts.field || 'file'
        };

        req.file(opts.field).upload({
            dirname: '../' + opts.root + '/uploads/' + opts.dirname,
            saveAs: opts.filename

        }, function(err, uploadedFiles) {
            if (!err) {
                File.create({
                    path: '/uploads/' + opts.dirname + '/' + uploadedFiles[0].fd.split('\\').pop(),
                    root: opts.root
                }, function(err, newFile) {
                    next(err, newFile);
                });
            } else {
                next(err);
            }
        });
    }

};