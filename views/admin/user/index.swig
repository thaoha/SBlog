{% extends '../layout.swig' %}

{% block adminContent %}
    <div class="col-sm-3 col-md-2 sidebar">
        <ul class="nav nav-sidebar">
            <li class="active"><a href="/admin">All</a></li>
        </ul>
    </div>

    <div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
        <h1 class="page-header">User</h1>

        <div class="row-fluid">
            <h2 class="sub-header">List</h2>
            <div class="table-responsive">
                <table class="table table-striped">
                    <thead>
                    <tr>
                        <th>#</th>
                        <th>Name</th>
                        <th>Email</th>
                        <th>Active</th>
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
    </div>
{% endblock %}