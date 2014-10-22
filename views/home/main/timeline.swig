{% extends '../layout.swig' %}

{% block styles %}
    {% parent %}
    <link href="/home/styles/components.css" rel="stylesheet" type="text/css"/>
    <link href="/home/styles/timeline.css" rel="stylesheet" type="text/css"/>
{% endblock %}
        
{% block homeContent %}

<div class="page-container">

<!-- BEGIN CONTENT -->
<div class="page-content-wrapper">
<div class="page-content">

<!-- BEGIN PAGE CONTENT-->
<div class="row-fluid">
<div class="col-md-3">
    <div class="panel panel-default profile">
        <div class="panel-body">
            <img class="avatar" src="home/images/user/avatar.jpg">
            <div>
                <p class="nick-name">ThaoHa</p>
                <ul class="info">
                    <li>Occupation: Web developer</li>
                    <li>Language: PHP, NodeJS</li>
                    <li><a href="https://www.facebook.com/thaoha.tb" target="_blank">More</a></li>
                </ul>
            </div>
        </div>
    </div>
    <div class="panel panel-default about-me">
        <div class="panel-heading">
            <h3 class="panel-title">About me</h3>
        </div>
        <div class="panel-body">
            <ul class="info">
                <li><i class="glyphicon glyphicon-user"></i> <span class="lb-info">Nickname</span>: thaoha</li>
                <li><i class="glyphicon glyphicon-bookmark"></i> <span class="lb-info">Study at</span>: DH Bach Khoa HN</li>
                <li><i class="glyphicon glyphicon-map-marker"></i> <span class="lb-info">Lives in</span>: Thai Binh City</li>
                <li><i class="glyphicon glyphicon-envelope"></i> <span class="lb-info">Email</span>: havanthao93@gmail.com</li>
            </ul>
        </div>
    </div>
</div>
<div class="col-md-9">
    <div class="row-fluid header">
        <div class="alert alert-info" role="alert">Just demo. Don't click lung tung nhé :v</div>
    </div>
    <ul class="timeline">
        <li class="timeline-yellow">
            <div class="timeline-time">
								<span class="date">
								4/10/13 </span>
								<span class="time">
								18:30 </span>
            </div>
            <div class="timeline-icon">
                <i class="fa fa-trophy"></i>
            </div>
            <div class="timeline-body">
                <h2>ICT 2013 20th International Conference</h2>
                <div class="timeline-content">
                    <img class="timeline-img pull-left" src="home/images/blog/2.jpg" alt="">
                    Ricebean black-eyed pea maize scallion green bean spinach cabbage jicama bell pepper carrot onion corn plantain garbanzo. Winter purslane courgette pumpkin quandong komatsuna fennel green bean cucumber watercress. Parsley amaranth tigernut silver beet maize fennel spinach. Ricebean black-eyed pea maize scallion green bean spinach cabbage jicama bell pepper carrot onion corn plantain garbanzo.
                </div>
                <div class="timeline-footer">
                    <a href="#" class="nav-link pull-right">
                        Read more <i class="m-icon-swapright m-icon-white"></i>
                    </a>
                </div>
            </div>
        </li>
        <li class="timeline-blue">
            <div class="timeline-time">
								<span class="date">
								4/11/13 </span>
								<span class="time">
								12:04 </span>
            </div>
            <div class="timeline-icon">
                <i class="fa fa-video-camera"></i>
            </div>
            <div class="timeline-body">
                <h2>Management Meeting</h2>
                <div class="timeline-content">
                    <img class="timeline-img pull-right" src="home/images/blog/1.jpg" alt="">
                    Caulie dandelion maize lentil collard greens radish arugula sweet pepper water spinach kombu courgette lettuce. Celery coriander bitterleaf epazote radicchio shallot winter collard greens spring onion squash lentil. Artichoke salad bamboo shoot black-eyed pea brussels sprout garlic kohlrabi purslane collard greens spring onion squash lentil. Artichoke salad bamboo shoot black-eyed pea brussels sprout garlic kohlrabi..
                </div>
                <div class="timeline-footer">
                    <a href="#" class="nav-link">
                        Read more <i class="m-icon-swapright m-icon-white"></i>
                    </a>
                </div>
            </div>
        </li>
        <li class="timeline-green">
            <div class="timeline-time">
								<span class="date">
								4/13/13 </span>
								<span class="time">
								05:36 </span>
            </div>
            <div class="timeline-icon">
                <i class="fa fa-comments"></i>
            </div>
            <div class="timeline-body">
                <h2>New Project Launch</h2>
                <div class="timeline-content">
                    <img class="timeline-img pull-left" src="home/images/blog/3.jpg" alt="">
                    Winter purslane courgette pumpkin quandong komatsuna fennel green bean cucumber watercress. Pea sprouts wattle seed rutabaga okra yarrow cress avocado grape radish bush tomato ricebean. Pea sprouts wattle seed rutabaga okra yarrow cress avocado grape radish bush tomato ricebean.
                </div>
                <div class="timeline-footer">
                    <a href="#" class="nav-link">
                        Read more <i class="m-icon-swapright m-icon-white"></i>
                    </a>
                </div>
            </div>
        </li>
        <li class="timeline-purple">
            <div class="timeline-time">
								<span class="date">
								4/15/13 </span>
								<span class="time">
								13:15 </span>
            </div>
            <div class="timeline-icon">
                <i class="fa fa-music"></i>
            </div>
            <div class="timeline-body">
                <h2>Promotion Day</h2>
                <div class="timeline-content">
                    <div class="scroller" data-height="175px" data-always-visible="1" data-rail-visible1="1">
                        <p>
                            <img class="timeline-img pull-right" src="home/images/blog/4.jpg" alt="">
                            Caulie dandelion maize lentil collard greens radish arugula sweet pepper water spinach kombu courgette lettuce. Celery coriander bitterleaf epazote radicchio shallot winter purslane collard greens spring onion squash lentil. Artichoke salad bamboo shoot black-eyed pea brussels sprout garlic kohlrabi. coriander bitterleaf epazote radicchio shallot winter purslane collard.
                        </p>
                        <p>
                            Coriander bitterleaf epazote radicchio shallot winter purslane collard. Caulie dandelion maize lentil collard greens radish arugula sweet pepper water spinach kombu courgette lettuce. Celery coriander bitterleaf epazote radicchio shallot winter purslane collard greens spring onion squash lentil. Artichoke salad bamboo shoot black-eyed pea brussels sprout garlic kohlrabi.
                        </p>
                        <p>
                            <img class="timeline-img pull-left" src="home/images/blog/6.jpg" alt=""> Caulie dandelion maize lentil collard greens radish arugula sweet pepper water spinach kombu courgette lettuce. Celery coriander bitterleaf epazote radicchio shallot winter purslane collard greens spring onion squash lentil. Artichoke salad bamboo shoot black-eyed pea brussels sprout garlic kohlrabi radicchio shallot winter purslane collard greens spring onion squash lentil.
                        </p>
                        <p>
                            Coriander bitterleaf epazote radicchio shallot winter purslane collard. Caulie dandelion maize lentil collard greens radish arugula sweet pepper water spinach kombu courgette lettuce. Celery coriander bitterleaf epazote radicchio shallot winter purslane collard greens spring onion squash lentil. Artichoke salad bamboo shoot black-eyed pea brussels sprout garlic kohlrabi.
                        </p>
                    </div>
                </div>
                <div class="timeline-footer">
                    <a href="#" class="btn blue">
                        Read more <i class="m-icon-swapright m-icon-white"></i>
                    </a>
                </div>
            </div>
        </li>
        <li class="timeline-red">
            <div class="timeline-time">
								<span class="date">
								4/16/13 </span>
								<span class="time">
								21:30 </span>
            </div>
            <div class="timeline-icon">
                <i class="fa fa-rss"></i>
            </div>
            <div class="timeline-body">
                <h2>Daily Feeds</h2>
                <div class="timeline-content">
                    <img class="timeline-img pull-left" src="home/images/blog/5.jpg" alt="">
                    Parsley amaranth tigernut silver beet maize fennel spinach. Ricebean black-eyed pea maize scallion green bean spinach cabbage jicama bell pepper carrot onion corn plantain garbanzo. Sierra leone bologi komatsuna celery peanut swiss chard silver beet squash dandelion maize chicory burdock tatsoi dulse radish wakame beetroot.
                </div>
                <div class="timeline-footer">
                    <a href="#" class="btn green pull-right">
                        Read more <i class="m-icon-swapright m-icon-white"></i>
                    </a>
                </div>
            </div>
        </li>
        <li class="timeline-grey">
            <div class="timeline-time">
								<span class="date">
								4/17/13 </span>
								<span class="time">
								12:11 </span>
            </div>
            <div class="timeline-icon">
                <i class="fa fa-times"></i>
            </div>
            <div class="timeline-body">
                <h2>Staff Meeting</h2>
                <div class="timeline-content">
                    Caulie dandelion maize lentil collard greens radish arugula sweet pepper water spinach kombu courgette lettuce. Celery coriander bitterleaf epazote radicchio shallot winter purslane collard greens spring onion squash lentil. Artichoke salad bamboo shoot black-eyed pea brussels sprout garlic kohlrabi.
                </div>
                <div class="timeline-footer">
                    <a href="#" class="nav-link pull-right">
                        Read more <i class="m-icon-swapright m-icon-white"></i>
                    </a>
                </div>
            </div>
        </li>
        <li class="timeline-blue timeline-noline">
            <div class="timeline-time">
								<span class="date">
								4/18/13 </span>
								<span class="time">
								09:56 </span>
            </div>
            <div class="timeline-icon">
                <i class="fa fa-bar-chart-o"></i>
            </div>
            <div class="timeline-body">
                <h2>Demo Europe 2013</h2>
                <div class="timeline-content">
                    <img class="timeline-img pull-left" src="home/images/blog/2.jpg" alt="">
                    Parsnip lotus root celery yarrow seakale tomato collard greens tigernut epazote ricebean melon tomatillo soybean chicory broccoli beet greens peanut salad. Lotus root burdock bell pepper chickweed shallot groundnut pea sprouts welsh onion wattle seed pea salsify turnip scallion peanut arugula bamboo shoot onion swiss chard.
                </div>
                <div class="timeline-footer">
                    <a href="#" class="nav-link">
                        Read more <i class="m-icon-swapright m-icon-white"></i>
                    </a>
                </div>
            </div>
        </li>
    </ul>
</div>
</div>
<!-- END PAGE CONTENT-->
</div>
</div>
<!-- END CONTENT -->

</div>

<!-- BEGIN FOOTER -->
<div class="row-fluid">
    <div class="col-md-12">
        <div class="page-footer-inner">
            2014 &copy; ThaoHa.
        </div>
        <div class="page-footer-tools">
            <span class="go-top">
                <i class="fa fa-angle-up"></i>
            </span>
        </div>
    </div>
</div>

{% endblock %}

{% block scripts %}
    {% parent %}
{% endblock %}