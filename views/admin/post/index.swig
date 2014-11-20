{% extends '../layout.swig' %}

{% block adminContent %}
    <div class="col-sm-3 col-md-2 sidebar">
        {% include './_sidebar.swig' %}
    </div>

    <div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
        {% block adminUserContent %}
            <h1 class="page-header">Post</h1>

            <div class="row-fluid">
                <h2 class="sub-header">List</h2>
                <div class="table-responsive">
                    <table class="table table-striped">
                        <thead>
                        <tr>
                            <th>#</th>
                            <th>Title</th>
                            <th>User</th>
                            <th>Published</th>
                            <th>CreateAt</th>
                            <th>Action</th>
                        </tr>
                        </thead>
                        <tbody>
                        {% include './list.swig' %}
                        </tbody>
                    </table>
                </div>
            </div>
        {% endblock %}
    </div>
{% endblock %}