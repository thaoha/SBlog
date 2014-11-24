{% extends '../layout.swig' %}

{% block styles %}
    {% parent %}
    <link rel="stylesheet" href="/plugins/bootstrap-summernote/summernote.css">
    <link rel="stylesheet" href="/plugins/bootstrap-fileinput/css/fileinput.min.css">
    <link href="/home/styles/components.css" rel="stylesheet" type="text/css"/>
    <link href="/home/styles/timeline.css" rel="stylesheet" type="text/css"/>
{% endblock %}
        
{% block homeContent %}

{% include '../elements/_navbar.swig' %}

<div class="container">

<!-- BEGIN CONTENT -->
<div class="page-content">
    <!-- BEGIN PAGE CONTENT-->
    <div class="row">
        <div class="col-md-3">
            {% include './_menus.swig' %}
        </div>
        <div class="col-md-9">
            <div class="panel panel-default">
                <div class="panel-body">
                    {% include './_post_form.swig' %}
                </div>
            </div>
        </div>
    </div>
    <!-- END PAGE CONTENT-->
</div>
<!-- END CONTENT -->

</div>

<!-- BEGIN FOOTER -->
<div class="row-fluid">
    <div class="container">
        <div class="col-md-12">
            <div class="page-footer-inner">
                2014 &copy; ThaoHa.
            </div>
            <div class="page-footer-tools">
                <span class="go-top">
                    <i class="fa fa-angle-up"></i>
                </span>
            </div>
        </div>
    </div>
</div>

{% endblock %}

{% block scripts %}
    {% parent %}
    <script src="/plugins/bootstrap-summernote/summernote.min.js" type="text/javascript"></script>
    <script src="/plugins/bootstrap-fileinput/js/fileinput.min.js" type="text/javascript"></script>
    <script src="/home/js/post-form.js" type="text/javascript"></script>
{% endblock %}