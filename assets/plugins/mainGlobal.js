/**
 * Created by ThaoHa.
 * Email: havanthao93@gmail.com
 */

var MainGlobal = {

    spinner: new Spinner({
        lines: 10, // The number of lines to draw
        length: 10, // The length of each line
        width: 8, // The line thickness
        radius: 20, // The radius of the inner circle
        corners: 1, // Corner roundness (0..1)
        rotate: 0, // The rotation offset
        direction: 1, // 1: clockwise, -1: counterclockwise
        color: '#000', // #rgb or #rrggbb or array of colors
        speed: 1, // Rounds per second
        trail: 60, // Afterglow percentage
        shadow: false, // Whether to render a shadow
        hwaccel: false, // Whether to use hardware acceleration
        className: 'spinner', // The CSS class to assign to the spinner
        zIndex: 2e9, // The z-index (defaults to 2000000000)
        top: '50%', // Top position relative to parent
        left: '50%' // Left position relative to parent
    }).spin(),

    init: function() {
        this.ajaxForm($('form.ajax-form'));
    },

    ajaxForm: function(form, before, success) {
        form.ajaxForm({
            beforeSubmit: function() {
                $('button[type=submit]', form).button('loading');
            },
            success: function(data) {
                $('button[type=submit]', form).button('reset');
                if (typeof success !== 'undefined') {
                    success(data);
                }
            }
        });
    },

    showLoading: function(target) {
        target = target || $('body');
        target.append(this.spinner.el);
    },

    hideLoading: function() {
        this.spinner.stop();
    }
};

$(document).ready(function() {
    MainGlobal.init();
});