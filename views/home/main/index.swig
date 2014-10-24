{% extends '../layout.swig' %}

{% block styles %}
    {% parent %}
    <link href="/home/styles/components.css" rel="stylesheet" type="text/css"/>
    <link href="/home/styles/comingSoon.css" rel="stylesheet" type="text/css"/>
{% endblock %}

{% block homeContent %}

<div class="container">
    <div class="row">
        <div class="col-md-12 coming-soon-header">
            <!--<a class="brand" href="index.html">-->
            <!--<img src="#" alt="logo"/>-->
            <!--</a>-->
        </div>
    </div>
    <div class="row">
        <div class="col-md-6 coming-soon-content">
            <h1>ThaoHa Blog :D</h1>
            <p>
                At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi vehicula sem ut volutpat. Ut non libero magna fusce condimentum eleifend enim a feugiat.
            </p>
            <br>
            <a class="btn blue" href="/timeline">View demo</a>

            <ul class="social-icons margin-top-20">
                <li>
                    <a href="#" data-original-title="Feed" class="rss">
                    </a>
                </li>
                <li>
                    <a href="https://www.facebook.com/thaoha.tb" data-original-title="Facebook" class="facebook">
                    </a>
                </li>
                <li>
                    <a href="#" data-original-title="Twitter" class="twitter">
                    </a>
                </li>
                <li>
                    <a href="#" data-original-title="Goole Plus" class="googleplus">
                    </a>
                </li>
                <li>
                    <a href="#" data-original-title="Pinterest" class="pintrest">
                    </a>
                </li>
                <li>
                    <a href="#" data-original-title="Linkedin" class="linkedin">
                    </a>
                </li>
                <li>
                    <a href="#" data-original-title="Vimeo" class="vimeo">
                    </a>
                </li>
            </ul>
        </div>
        <div class="col-md-6 coming-soon-countdown">
            <div id="defaultCountdown">
            </div>
        </div>
    </div>
    <!--/end row-->
    <div class="row">
        <div class="col-md-12 coming-soon-footer">
            2014 &copy; ThaoHa.
        </div>
    </div>
</div>

{% endblock %}

{% block scripts %}
    {% parent %}
    <script src="/plugins/countdown/jquery.countdown.min.js" type="text/javascript"></script>
    <script src="/plugins/backstretch/jquery.backstretch.min.js" type="text/javascript"></script>
    <script src="/home/js/comingSoon.js" type="text/javascript"></script>
    <script>
        jQuery(document).ready(function() {
            ComingSoon.init();
        });
    </script>
{% endblock %}