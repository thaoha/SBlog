{% extends '../layout.swig' %}

{% block styles %}
    {% parent %}
    <link rel="stylesheet" href="/plugins/bootstrap-summernote/summernote.css">
    <link rel="stylesheet" href="/plugins/bootstrap-fileinput/css/fileinput.min.css">
    <link href="/home/styles/components.css" rel="stylesheet" type="text/css"/>
    <link href="/home/styles/timeline.css" rel="stylesheet" type="text/css"/>
{% endblock %}
        
{% block homeContent %}

<div class="page-container">

<!-- BEGIN CONTENT -->
<div class="page-content-wrapper">
<div class="page-content">

<!-- BEGIN PAGE CONTENT-->
<div class="row-fluid">
<div class="col-md-3">
    {% include './timeline/_mini_profile.swig' %}
    {% include './timeline/_about_me.swig' %}
</div>
<div class="col-md-9">
    <div class="row-fluid header">
        <div class="alert alert-info" role="alert">Just demo. Don't click lung tung nhé :v</div>
    </div>
    <div class="main-content">
        {% include './timeline/_post_form.swig' %}
    </div>
</div>
</div>
<!-- END PAGE CONTENT-->
</div>
</div>
<!-- END CONTENT -->

</div>

<!-- BEGIN FOOTER -->
<div class="row-fluid">
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

{% endblock %}

{% block scripts %}
    {% parent %}
    <script src="/plugins/bootstrap-summernote/summernote.min.js" type="text/javascript"></script>
    <script src="/plugins/bootstrap-fileinput/js/fileinput.min.js" type="text/javascript"></script>
    <script src="/home/js/post-form.js" type="text/javascript"></script>
{% endblock %}