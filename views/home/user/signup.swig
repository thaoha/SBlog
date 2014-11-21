{% extends '../layout.swig' %}

{% block styles %}
<link rel="stylesheet" href="/home/styles/signin.css">
{% endblock %}

{% block body %}

<div class="container">

    <form class="form-signin" role="form" method="post">
        <h2 class="form-signin-heading">Sign up</h2>
        {% if message | default(false) %}
            <div class="alert alert-warning" role="alert">{{ message }}</div>
        {% endif %}
        <input type="text" name="name" class="form-control" placeholder="Name" required autofocus>
        <input type="email" name="email" class="form-control" placeholder="Email address" required>
        <input type="password" name="password" class="form-control" placeholder="Password" required>
        <button class="btn btn-lg btn-primary btn-block" type="submit">Sign up</button>
        <div class="loading"></div>
    </form>

</div> <!-- /container -->

{% endblock %}