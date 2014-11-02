{% extends '../layout.swig' %}

{% block adminContent %}
    <div class="col-sm-3 col-md-2 sidebar">
        {% include './sidebar.swig' %}
    </div>

    <div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
        {% block adminUserContent %}
            <div class="row" id="user-filter-bar">
                <div class="col-md-2">
                    <select class="form-control limit">
                        <option value="10">Limit</option>
                        <option value="20">20</option>
                        <option value="30">30</option>
                        <option value="50">50</option>
                    </select>
                </div>
                <div class="col-md-2">
                    <select class="form-control active">
                        <option value="all">Active</option>
                        <option value="1">True</option>
                        <option value="0">False</option>
                    </select>
                </div>
                <div class="col-md-4">
                    <input class="form-control keyword" type="text" placeholder="Name or Email">
                </div>
                <div class="col-md-2">
                    <button class="btn btn-primary search-btn">Search</button>
                </div>
            </div>
            <div class="clearfix"></div>

            <div class="row-fluid">
            <h2 class="sub-header">List</h2>
            <div class="table-responsive">
                <table class="table table-striped s-list">
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
        {% endblock %}
    </div>
{% endblock %}

{% block scripts %}
    {% parent %}
    <script src="/admin/js/adminUser.js" type="text/javascript"></script>
{% endblock %}