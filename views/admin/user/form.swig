{% extends './index.swig' %}

{% block styles %}
    {% parent %}
    <link rel="stylesheet" href="/plugins/bootstrap-fileinput/css/fileinput.min.css">
{% endblock %}

{% block adminUserContent %}
    <div class="row-fluid">
        <h2 class="sub-header">Form</h2>
        <div>
            <form class="ajax-form user-form" role="form" method="POST">
                <div class="form-group">
                    <label for="inputAvatar">Avatar</label><br/>
                    <!--<img src="{{ user.avatar.path | default('') }}" style="height: 160px; width: auto;">-->
                    <input id="inputAvatar" type="file" name="avatar" class="file" accept="image/*">
                </div>
                <div class="form-group">
                    <label for="inputName">Name</label>
                    <input type="text" class="form-control" name="name" value="{{ user.name | default('') }}" id="inputName" placeholder="Enter name">
                </div>
                <div class="form-group">
                    <label for="inputEmail">Email address</label>
                    <input type="email" class="form-control" name="email" value="{{ user.email | default('') }}" id="inputEmail" placeholder="Enter email">
                </div>
                <div class="form-group">
                    <a class="password-action {% if not user | default(false) %}hidden{% endif %}" href="#">Edit password</a>
                    <div class="password-panel {% if user | default(false) %}hidden{% endif %}">
                        <label for="inputPassword">Password</label>
                        <input type="password" class="form-control" name="password" id="inputPassword" placeholder="Enter password">
                    </div>
                </div>
                <div class="checkbox">
                    <label>
                        <input type="checkbox" name="active" {% if user.active | default(false) %}checked{% endif %}> Active
                    </label>
                </div>
                <div class="alert" role="alert"></div>
                <button type="submit" class="btn btn-primary">
                    {% if user | default(false) %}Save{% else %}Create{% endif %}
                </button>
            </form>
        </div>
    </div>
{% endblock %}

{% block scripts %}
    {% parent %}
    <script src="/plugins/bootstrap-fileinput/js/fileinput.min.js" type="text/javascript"></script>
{% endblock %}