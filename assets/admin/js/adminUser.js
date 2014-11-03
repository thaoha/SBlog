/**
 * Created by ThaoHa on 11/3/2014.
 */

var AdminUser = {

    init: function() {
        this.filter();

        var form = $('form.user-form');
        if (form.length) {
            this.form(form);
        }
    },

    /**
     * User filter
     */
    filter: function() {
        var filter = $('#user-filter-bar');

        $('select', filter).change(function() {
            AdminUser.search(filter);
        });

        $('.search-btn', filter).click(function() {
            AdminUser.search(filter);
        });
    },

    /**
     * Search user
     *
     * @param filter
     */
    search: function(filter) {
        $.ajax({
            data: {
                limit: parseInt($('.limit', filter).val()),
                active: $('.active', filter).val(),
                keyword: $.trim($('.keyword', filter).val())
            },
            success: function(list) {
                $('tbody', '.s-list').html($(list));
            }
        });
    },

    form: function(form) {
        $('#inputAvatar', form).fileinput({
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
    }
};

$(document).ready(function() {
    AdminUser.init();
});