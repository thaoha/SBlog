/**
 * Created by ThaoHa on 11/3/2014.
 */

var AdminUser = {

    init: function() {
        this.filter();
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
    }
};

$(document).ready(function() {
    AdminUser.init();
});