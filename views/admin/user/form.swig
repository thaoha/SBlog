{% extends './index.swig' %}

{% block adminUserContent %}
    <div class="row-fluid">
        <h2 class="sub-header">Form</h2>
        <div>
            <form class="ajax-form" role="form" method="POST">
                <div class="form-group">
                    <label for="inputName">Name</label>
                    <input type="text" class="form-control" name="user[name]" value="{{ user.name | default('') }}" id="inputName" placeholder="Enter name">
                </div>
                <div class="form-group">
                    <label for="inputEmail">Email address</label>
                    <input type="email" class="form-control" name="user[email]" value="{{ user.email | default('') }}" id="inputEmail" placeholder="Enter email">
                </div>
                <div class="checkbox">
                    <label>
                        <input type="checkbox" name="user[active]" {% if user.active | default(false) %}checked{% endif %}> Active
                    </label>
                </div>
                <div class="alert" role="alert"></div>
                <button type="submit" class="btn btn-primary">Save</button>
            </form>
        </div>
    </div>
{% endblock %}