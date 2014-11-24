<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
    <div class="container">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="/">Blog</a>
        </div>
        <div class="profile-mini pull-right hidden-xs">
            {% if user | default(false) %}
                <a href="/tl/{{ user.alias }}">
                    <img class="avatar" src="{{ user.avatar.path | default('/home/images/user/default-avatar.jpg') }}">
                    <span class="nick-name">{{ user.name }}</span>
                </a>
            {% else %}
                <a class="btn blue" href="/login">Log in</a>
            {% endif %}
        </div>
        <div id="navbar" class="collapse navbar-collapse">
            <ul class="nav navbar-nav">
                <li class="active"><a href="/">Home</a></li>
                {% if user | default(false) %}
                    <li><a href="/tl/{{ user.alias }}/manager">Manager</a></li>
                {% endif %}
            </ul>
        </div><!--/.nav-collapse -->
    </div>
</nav>