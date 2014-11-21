/**
 * Created by ThaoHa on 11/3/2014.
 */

var AdminPostForm = {

    init: function() {
        this.editor();
        this.avatar();
    },

    /**
     * Init editor
     */
    editor: function() {
        $('.editor').summernote({
            height: 300
        });
    },

    /**
     * Avatar action
     */
    avatar: function() {
        $('#inputAvatar').fileinput({
            showUpload: false,
            allowedFileTypes: ['image'],
            showCaption: false,
            allowedFileExtensions: ['jpg', 'gif', 'png'],
            previewFileType: "image",
            browseClass: "btn btn-success",
            browseLabel: "Pick Image",
            browseIcon: '<i class="glyphicon glyphicon-picture"></i>',
            removeClass: "btn btn-danger",
            removeLabel: "Delete",
            removeIcon: '<i class="glyphicon glyphicon-trash"></i>'
        });

        $('#inputAvatar', form).on('fileloaded', function(event, file, previewId) {

        });
    }
};

$(document).ready(function() {
    AdminPostForm.init();
});