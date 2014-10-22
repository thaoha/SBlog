{% extends '../layout.swig' %}

{% block adminContent %}

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