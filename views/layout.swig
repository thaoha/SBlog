<!DOCTYPE html>
<html>
  <head>
    <title>SBlog</title>

    <!-- Viewport mobile tag for sensible mobile support -->
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">

    <!--PLUGINS-->
    <link rel="stylesheet" href="/plugins/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="/plugins/font-awesome/css/font-awesome.min.css">
    <!--PLUGINS END-->

    {% block styles %}{% endblock %}
  </head>

  <body>
    {% block body %}{% endblock %}

    <!--PLUGINS-->
    <script src="/plugins/jquery-1.11.0.min.js"></script>
    <script src="/plugins/bootstrap/js/bootstrap.min.js"></script>
    <script src="/plugins/jquery.form.min.js"></script>
    <script src="/plugins/spin.min.js"></script>
    <!--PLUGINS END-->

    <!--SCRIPTS-->
    <script src="/home/js/dependencies/sails.io.js"></script>
    <script src="/plugins/mainGlobal.js"></script>
    <!--SCRIPTS END-->

    {% block scripts %}{% endblock %}
  </body>
</html>
