{% extends '../layout.swig' %}

{% block styles %}
    <link rel="stylesheet" href="/styles/importer.css">
{% endblock %}

{% block body %}

        {% block homeContent %}{% endblock %}

{% endblock %}

{% block scripts %}
    {% parent %}
    <script src="/home/js/homeGlobal.js" type="text/javascript"></script>
{% endblock %}