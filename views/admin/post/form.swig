{% extends './index.swig' %}

{% block styles %}
    {% parent %}
    <link rel="stylesheet" href="/plugins/bootstrap-summernote/summernote.css">
    <link rel="stylesheet" href="/plugins/bootstrap-fileinput/css/fileinput.min.css">
{% endblock %}

{% block adminUserContent %}
    <div class="row-fluid">
        <h2 class="sub-header">Form</h2>
        <div>
            <form class="ajax-form post-form" role="form" method="POST">
                <div class="form-group">
                    <label for="inputTitle">Title</label>
                    <input type="text" class="form-control" name="title" value="{{ post.name | default('') }}" id="inputTitle" placeholder="Enter title">
                </div>
                <div class="form-group">
                    <label for="inputDescription">Description</label>
                    <textarea class="form-control" name="description" value="{{ post.description | default('') }}" id="inputDescription" placeholder="Enter description"></textarea>
                </div>
                <div class="form-group">
                    <label for="inputContent">Content</label>
                    <textarea class="form-control editor" name="content" id="inputContent"></textarea>
                </div>
                <div class="form-group">
                    <label for="inputAvatar">Avatar</label>
                    <input id="inputAvatar" type="file" name="avatar" class="file" accept="image/*">
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
    <script src="/plugins/bootstrap-summernote/summernote.min.js" type="text/javascript"></script>
    <script src="/plugins/bootstrap-fileinput/js/fileinput.min.js" type="text/javascript"></script>
    <script src="/admin/js/post-form.js" type="text/javascript"></script>
{% endblock %}