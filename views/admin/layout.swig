{% extends '../layout.swig' %}

{% block styles %}
    <link rel="stylesheet" href="/admin/styles/dashboard.css">
{% endblock %}

{% block body %}
    {% include './elements/header.swig' %}

    <div class="container-fluid">
        <div class="row">
            {% include './elements/sidebar.swig' %}

            <div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
                {% block adminContent %}{% endblock %}
            </div>
        </div>
    </div>
{% endblock %}

{% block scripts %}

{% endblock %}