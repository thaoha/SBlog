{% extends '../layout.swig' %}

{% block styles %}
    {% parent %}
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
            {% include './_about_me.swig' %}
            {% include './_new_activity.swig' %}
        </div>
        <div class="col-md-9">
            <ul class="timeline">
                {% include './_post_list.swig' %}
            </ul>
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
{% endblock %}