/**
 * Created by ThaoHa.
 * Email: havanthao93@gmail.com
 */

var AdminGlobal = {

    init: function() {
        this.deleteSItem();
    },

    /**
     * Delete item in list by ajax
     */
    deleteSItem: function() {
        var item = $('.s-item', '.s-list');

        $('.delete-btn', item).click(function(e) {
            e.preventDefault();

            var btn = $(this);
            var currentItem = btn.parents('.s-item:first');

            $.ajax({
                url: btn.attr('href'),
                type: 'POST',
                dataType: 'JSON',
                beforeSend: function() {

                },
                success: function(status) {
                    if (status === true) {
                        currentItem.remove();
                    }
                }
            });
        });
    }
};

$(document).ready(function() {
    AdminGlobal.init();
});