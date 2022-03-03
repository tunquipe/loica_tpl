{% if lp_mode == 'embedframe' %}
<div class="menu-float">
    <a href="{{ button_home_url }}" title="{{ 'GoBack'|get_lang }}" class="btn-circle">
        <i class="fa fa-arrow-left" aria-hidden="true"></i>
    </a>
</div>
<div id="learning_path_right_zone" class="no-right-col">
    <div class="lp-view-zone-container">
        <div class="lp-view-tabs">
            <div id="tab-iframe" class="tab-content">
                <div role="tabpanel" class="tab-pane active" id="lp-view-content">
                    <div id="wrapper-iframe">
                        <iframe
                                id="content_id"
                                name="content_name"
                                src="{{ iframe_src }}"
                                style="width:100%; height:100%"
                                border="0"
                                frameborder="0"
                                allowfullscreen="true"
                                webkitallowfullscreen="true" mozallowfullscreen="true">
                        </iframe>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
{% else %}
<nav class="navbar navbar-inverse navbar-learn">
    <div class="container-fluid">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="{{ _p.web }}">
                {% if logo_id %}
                    <img src="{{ logo_id }}"/>
                {% else %}
                    <img src="{{ _p.web_css_theme }}images/header-logo.png"/>
                {% endif %}
            </a>

            <a href="{{ button_home_url }}" class="btn btn-success">
                <i class="fa fa-chevron-left" aria-hidden="true"></i> {{ 'GoBack'|get_lang }}
            </a>
        </div>
        <div id="navbar" class="navbar-collapse collapse">
            {% if _u.logged == 1 and not user_in_anon_survey %}
                <ul class="nav navbar-nav navbar-right">
                    <li id="btn-menu-float" class="navigation">
                        {% if show_left_column == 1 %}
                            <a href="#" title = "{{ 'Expand'|get_lang }}" id="lp-view-expand-toggle"
                               class="icon-toolbar expand" role="button">
                                {% if lp_mode == 'embedframe' %}
                                    <span class="fa fa-compress" aria-hidden="true"></span>
                                    <span class="sr-only">{{ 'Expand'|get_lang }}</span>
                                {% else %}
                                    <span class="fa fa-expand" aria-hidden="true"></span>
                                    <span class="sr-only">{{ 'Expand'|get_lang }}</span>
                                {% endif %}
                            </a>
                        {% endif %}
                        <a id="home-course"
                           title = "{{ 'Home'|get_lang }}"
                           href="{{ button_home_url }}"
                           class="icon-toolbar" target="_self"
                           onclick="javascript: window.parent.API.save_asset();">
                            <em class="fa fa-home"></em> <span class="hidden-xs hidden-sm"></span>
                        </a>
                        {{ navigation_bar }}

                    </li>
                    {% if _u.status != 6 %}
                        <li class="dropdown avatar-user">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button"
                               aria-expanded="false">
                                <img class="img-circle" src="{{ _u.avatar_small }}" alt="{{ _u.complete_name }}"/>
                                <span class="username-movil">{{ _u.complete_name }}</span>
                                <span class="caret"></span>
                            </a>
                            <ul class="dropdown-menu" role="menu">
                                <li class="user-header">
                                    <div class="text-center">
                                        <a href="{{ profile_url }}">
                                            <img class="img-circle" src="{{ _u.avatar_medium }}" alt="{{ _u.complete_name }}"/>
                                            <p class="name">{{ _u.complete_name }}</p>
                                        </a>
                                        <p><i class="fa fa-envelope-o" aria-hidden="true"></i> {{ _u.email }}</p>
                                    </div>
                                </li>
                                <li role="separator" class="divider"></li>
                                {% if message_url %}
                                    <li class="user-body">
                                        <a title="{{ "Inbox"|get_lang }}" href="{{ message_url }}">
                                            <em class="fa fa-envelope" aria-hidden="true"></em> {{ "Inbox"|get_lang }}
                                        </a>
                                    </li>
                                {% endif %}

                                {#{% if pending_survey_url %}
                                    <li class="user-body">
                                        <a href="{{ pending_survey_url }}">
                                            <em class="fa fa-pie-chart"></em> {{ 'PendingSurveys'|get_lang }}
                                        </a>
                                    </li>
                                {% endif %}#}

                                {#{% if certificate_url %}
                                    <li class="user-body">
                                        <a title="{{ "MyCertificates"|get_lang }}" href="{{ certificate_url }}">
                                            <em class="fa fa-graduation-cap"
                                                aria-hidden="true"></em> {{ "MyCertificates"|get_lang }}
                                        </a>
                                    </li>
                                {% endif %}#}

                                <li class="user-body">
                                    <a id="logout_button" title="{{ "Logout"|get_lang }}" href="{{ logout_link }}">
                                        <em class="fa fa-sign-out"></em> {{ "Logout"|get_lang }}
                                    </a>
                                </li>
                            </ul>
                        </li>
                    {% endif %}
                </ul>
            {% endif %}

        </div><!--/.navbar-collapse -->
    </div>
</nav>

<div id="learning_path_main" class="{{ is_allowed_to_edit ? 'lp-view-include-breadcrumb' }} {{ lp_mode == 'embedframe' ? 'lp-view-collapsed' : '' }}">
    {% if show_left_column == 1 %}
    <div id="learning_path_left_zone" class="sidebar-scorm">
        <div class="lp-view-zone-container">
            <div id="scorm-info">
                <div id="panel-scorm" class="panel-body">
                    <div class="image-avatar">
                        {% if lp_author == '' %}
                           <div class="text-center">
                                {{ lp_preview_image }}
                            </div>
                        {% else %}
                            <div class="media-author">
                                <div class="media-author-avatar">
                                    {{ lp_preview_image }}
                                </div>
                                <div class="media-author-description">
                                    {{ lp_author }}
                                </div>
                            </div>
                        {% endif %}
                    </div>
                    {% if show_audio_player %}
                        <div id="lp_media_file" class="audio-scorm">
                            {{ media_player }}
                        </div>
                    {% endif %}

                    {% if lp_accumulate_work_time != '' %}
                        {% set lp_progress %}
                        <style>
                            #timer .container{display:table;background:#777;color:#eee;font-weight:bold;width:100%;text-align:center;text-shadow:1px 1px 4px #999;}
                            #timer .container div{display:table-cell;font-size:24px;padding:0px;width:20px;}
                            #timer .container .divider{width:10px;color:#ddd;}
                            #btn-comenzar{box-sizing:border-box;background:#eee;border:none;margin:0 auto;padding:20px;width:100%;font-size:30px;color:#777;}
                            #btn-comenzar:hover{background:#fff;}
                        </style>
                        <script>
                            $(function() {
                                var timerData = {
                                    hour: parseInt($("#hour").text()),
                                    minute: parseInt($("#minute").text()),
                                    second:  parseInt($("#second").text())
                                };
                                //window.timerInterval = null;
                                clearInterval(window.timerInterval);
                                window.timerInterval = setInterval(function(){
                                    // Seconds
                                    timerData.second++;
                                    if (timerData.second >= 60) {
                                        timerData.second = 0;
                                        timerData.minute++;
                                    }

                                    // Minutes
                                    if (timerData.minute >= 60) {
                                        timerData.minute = 0;
                                        timerData.hour++;
                                    }

                                    $("#hour").text(timerData.hour < 10 ? '0' + timerData.hour : timerData.hour);
                                    $("#minute").text(timerData.minute < 10 ? '0' + timerData.minute : timerData.minute);
                                    $("#second").text(timerData.second < 10 ? '0' + timerData.second : timerData.second);
                                }, 1000);
                            })
                        </script>
                        <div class="row">
                            <div class="col-xs-4">
                                <b>
                                    {{ "ProgressSpentInLp"|get_lang|format(lp_accumulate_work_time) }}
                                </b>
                            </div>
                            <div class="col-xs-8">
                                <div id="progress_bar">
                                    {{ progress_bar }}
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-xs-4">
                                <b>
                                    {{ "TimeSpentInLp"|get_lang|format(lp_accumulate_work_time) }}
                                </b>
                            </div>
                            <div class="col-xs-8">
                                <div id="timer">
                                    <div class="container">
                                        <div id="hour">{{ hour }}</div>
                                        <div class="divider">:</div>
                                        <div id="minute">{{ minute }}</div>
                                        <div class="divider">:</div>
                                        <div id="second">{{ second }}</div>

                                        <div id="slash"> / </div>
                                        <div>{{ hour_min }}</div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        {% endset %}
                    {% else %}
                        {% set lp_progress %}
                            <div id="progress_bar">
                                {{ progress_bar }}
                            </div>
                        {% endset %}
                    {% endif %}

                    {% if gamification_mode == 1 %}
                        <!--- gamification -->
                        <div id="scorm-gamification">
                            <div class="row">
                                <div class="col-xs-6">
                                    {% if gamification_stars > 0 %}
                                        {% for i in 1..gamification_stars %}
                                            <em class="fa fa-star level"></em>
                                        {% endfor %}
                                    {% endif %}

                                    {% if gamification_stars < 4 %}
                                        {% for i in 1..4 - gamification_stars %}
                                            <em class="fa fa-star"></em>
                                        {% endfor %}
                                    {% endif %}
                                </div>
                                <div class="col-xs-6 text-right">
                                    {{ "XPoints"|get_lang|format(gamification_points) }}
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-xs-12 navegation-bar">
                                   {{ lp_progress }}
                                </div>
                            </div>
                        </div>
                        <!--- end gamification -->
                    {% else %}
                       {{ lp_progress }}
                    {% endif %}

                    {{ teacher_toc_buttons }}
                </div>
            </div>
            {# TOC layout #}
            <div id="toc_id" class="scorm-body" name="toc_name">
                {% include 'learnpath/scorm_list.tpl'|get_template %}
            </div>
            {# end TOC layout #}
        </div>
    </div>
    {# end left zone #}
    {% endif %}

    {# Right zone #}
    <div id="learning_path_right_zone" class="{{ show_left_column == 1 ? 'content-scorm' : 'no-right-col' }}">
        <div class="lp-view-zone-container">
            <div class="lp-view-tabs">
                <div id="navTabsbar" class="nav-tabs-bar">
                    <ul id="navTabs" class="nav nav-tabs tabs-right" role="tablist">
                        <li role="presentation" class="active">
                            <a href="#lp-view-content" title="{{ 'Lesson'|get_lang }}"
                               aria-controls="lp-view-content" role="tab" data-toggle="tab">
                                <span class="fa fa-book fa-2x fa-fw" aria-hidden="true"></span>
                                <span class="sr-only">{{ 'Lesson'|get_lang }}</span>
                            </a>
                        </li>
                        <li role="presentation">
                            <a href="#lp-view-forum" title="{{ 'Forum'|get_lang }}"
                               aria-controls="lp-view-forum" role="tab" data-toggle="tab">
                                <span class="fa fa-commenting-o fa-2x fa-fw" aria-hidden="true"></span>
                                <span class="sr-only">{{ 'Forum'|get_lang }}</span>
                            </a>
                        </li>
                    </ul>
                </div>

                <div id="tab-iframe" class="tab-content">
                    <div role="tabpanel" class="tab-pane active" id="lp-view-content">
                        <div id="wrapper-iframe">
                        {% if lp_mode == 'fullscreen' %}
                            <iframe
                                id="content_id_blank"
                                name="content_name_blank"
                                src="blank.php"
                                style="width:100%; height:100%"
                                border="0"
                                frameborder="0"
                                allowfullscreen="true"
                                webkitallowfullscreen="true" mozallowfullscreen="true"></iframe>
                        {% else %}
                            <iframe
                                id="content_id"
                                name="content_name"
                                src="{{ iframe_src }}"
                                style="width:100%; height:100%"
                                border="0"
                                frameborder="0"
                                allowfullscreen="true"
                                webkitallowfullscreen="true" mozallowfullscreen="true"></iframe>
                        {% endif %}
                        </div>
                    </div>
                    <div role="tabpanel" class="tab-pane" id="lp-view-forum">
                    </div>
                </div>
            </div>
        </div>
    </div>
    {# end right Zone #}
</div>
{% endif %}
<script>
    /*document.querySelector('.menu-button').onclick = function(e) {
        e.preventDefault(); document.querySelector('.circle').classList.toggle('open');
    }*/
    var LPViewUtils = {
        setHeightLPToc: function () {
            var scormInfoHeight = $('#scorm-info').outerHeight(true);
            $('#learning_path_toc').css({
                top: scormInfoHeight
            });
        }
    };

    $(function() {
        if (/iPhone|iPod|iPad/.test(navigator.userAgent)) {
            // Fix an issue where you cannot scroll below first screen in
            // learning paths on Apple devices
            document.getElementById('wrapper-iframe').setAttribute(
                'style',
                'width:100%; overflow:auto; position:auto; -webkit-overflow-scrolling:touch !important;'
            );
            // Fix another issue whereby buttons do not react to click below
            // second screen in learning paths on Apple devices
            document.getElementById('content_id').setAttribute('style', 'overflow: auto;');
        }

        {% if lp_mode == 'embedframe' %}
            //$('#learning_path_main').addClass('lp-view-collapsed');
            $('#lp-view-expand-button, #lp-view-expand-toggle').on('click', function (e) {
                e.preventDefault();
                $('#learning_path_main').toggleClass('lp-view-collapsed');
                $('#lp-view-expand-toggle span.fa').toggleClass('fa-compress');
                $('#lp-view-expand-toggle span.fa').toggleClass('fa-expand');
                var className = $('#lp-view-expand-toggle span.fa').attr('class');
                if (className == 'fa fa-expand') {
                    $(this).attr('title', '{{ "Expand" | get_lang }}');
                } else {
                    $(this).attr('title', '{{ "Collapse" | get_lang }}');
                }

                if($('#navTabsbar').is(':hidden')) {
                    $('#navTabsbar').show();
                } else {
                    $('#navTabsbar').hide();
                }
            });
        {% else %}
            $('#lp-view-expand-button, #lp-view-expand-toggle').on('click', function (e) {
                e.preventDefault();
                $('#learning_path_main').toggleClass('lp-view-collapsed');
                $('#lp-view-expand-toggle span.fa').toggleClass('fa-expand');
                $('#lp-view-expand-toggle span.fa').toggleClass('fa-compress');

                var className = $('#lp-view-expand-toggle span.fa').attr('class');
                if (className == 'fa fa-expand') {
                    $(this).attr('title', '{{ "Expand" | get_lang }}');
                } else {
                    $(this).attr('title', '{{ "Collapse" | get_lang }}');
                }
            });
        {% endif %}

        $('.lp-view-tabs').on('click', '.disabled', function (e) {
            e.preventDefault();
        });

        $('a#ui-option').on('click', function (e) {
            e.preventDefault();
            var icon = $(this).children('.fa');
            if (icon.is('.fa-chevron-up')) {
                icon.removeClass('fa-chevron-up').addClass('fa-chevron-down');

                return;
            }
            icon.removeClass('fa-chevron-down').addClass('fa-chevron-up');
        });

        LPViewUtils.setHeightLPToc();

        $('.image-avatar img').load(function () {
            LPViewUtils.setHeightLPToc();
        });

        $('.scorm_item_normal a, #scorm-previous, #scorm-next').on('click', function () {
            $('.lp-view-tabs').animate({opacity: 0}, 500);
        });

        $('#learning_path_right_zone #lp-view-content iframe').on('load', function () {
            $('.lp-view-tabs a[href="#lp-view-content"]').tab('show');
            $('.lp-view-tabs').animate({opacity: 1}, 500);
        });

        loadForumThread({{ lp_id }}, {{ lp_current_item_id }});
        checkCurrentItemPosition({{ lp_current_item_id }});

        {% if glossary_extra_tools in glossary_tool_available_list %}
            // Loads the glossary library.
            (function () {
                {% if show_glossary_in_documents == 'ismanual' %}
                    $.frameReady(
                        function(){
                            //  $("<div>I am a div courses</div>").prependTo("body");
                        },
                        "#content_id",
                        [
                            { type:"script", id:"_fr1", src:"{{ jquery_web_path }}", deps: [
                                { type:"script", id:"_fr4", src:"{{ jquery_ui_js_web_path }}"},
                                { type:"script", id:"_fr2", src:"{{ _p.web_lib }}javascript/jquery.highlight.js"},
                                {{ fix_link }}
                            ]},
                            { type:"stylesheet", id:"_fr5", src:"{{ jquery_ui_css_web_path }}"},
                        ]
                    );
                {% elseif show_glossary_in_documents == 'isautomatic' %}
                    $.frameReady(
                        function(){
                            //  $("<div>I am a div courses</div>").prependTo("body");
                        },
                        "#content_id",
                        [
                            { type:"script", id:"_fr1", src:"{{ jquery_web_path }}", deps: [
                                { type:"script", id:"_fr4", src:"{{ jquery_ui_js_web_path }}"},
                                { type:"script", id:"_fr2", src:"{{ _p.web_lib }}javascript/jquery.highlight.js"},
                                {{ fix_link }}
                            ]},
                            { type:"stylesheet", id:"_fr5", src:"{{ jquery_ui_css_web_path }}"},
                        ]
                    );
                {% elseif fix_link != '' %}
                    $.frameReady(
                        function(){
                            //  $("<div>I am a div courses</div>").prependTo("body");
                        },
                        "#content_id",
                        [
                            { type:"script", id:"_fr1", src:"{{ jquery_web_path }}", deps: [
                                { type:"script", id:"_fr4", src:"{{ jquery_ui_js_web_path }}"},
                                {{ fix_link }}
                            ]},
                            { type:"stylesheet", id:"_fr5", src:"{{ jquery_ui_css_web_path }}"},
                        ]
                    );
                {% endif %}
            })();
        {% endif %}
        {% if disable_js_in_lp_view == 0 %}
            $(function() {
                var arr = ['link', 'sco'];

                if ($.inArray(olms.lms_item_type, arr) == -1) {
                    {{ frame_ready }}
                }
            });
        {% endif %}

        $(window).on('resize', function () {
            LPViewUtils.setHeightLPToc();
        });
    });
</script>
