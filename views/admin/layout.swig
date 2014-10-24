{% extends '../layout.swig' %}

{% block styles %}
    <link rel="stylesheet" href="/admin/styles/dashboard.css">
{% endblock %}

{% block body %}
    {% include './elements/header.swig' %}

    <div class="container-fluid">
        <div class="row">
            {% block adminContent %}{% endblock %}
        </div>
    </div>
{% endblock %}

{% block scripts %}
    {% parent %}
    <script src="/admin/js/adminGlobal.js" type="text/javascript"></script>
{% endblock %}