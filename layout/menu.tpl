<nav class="navbar navbar-default">
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
        </div>
        <div id="navbar" class="collapse navbar-collapse">
            <ul class="nav navbar-nav">
                {% for item in menu %}
                    {% set show_item = true %}

                    {% if user_in_anon_survey and item.key != 'homepage' %}
                        {% set show_item = false %}
                    {% endif %}

                    {% if show_item %}
                        <li class="{{ item.key }} {{ item.current }}">
                            <a href="{{ item.url }}" {{ item.target ? 'target="' ~ item.target ~ '"' : '' }} title="{{ item.title }}">
                                {{ item.title }}
                            </a>
                        </li>
                    {% endif %}
                {% endfor %}
            </ul>
            {% if _u.logged == 1 and not user_in_anon_survey %}
                <ul class="nav navbar-nav navbar-right">
                    <li id="count_message_li" class="hidden">
                        <a href="{{ message_url }}">
                            <span class="spinner">
                                <i class="fa fa-bell fa-lg" aria-hidden="true"></i>
                            </span>
                            <span id="count_message" class="badge badge-warning"></span>
                        </a>
                    </li>
                    {% if language_form %}
                        <li class="dropdown language">
                            {{ language_form }}
                        </li>
                    {% endif %}
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

                                {% if pending_survey_url %}
                                    <li class="user-body">
                                        <a href="{{ pending_survey_url }}">
                                            <em class="fa fa-pie-chart"></em> {{ 'PendingSurveys'|get_lang }}
                                        </a>
                                    </li>
                                {% endif %}

                                {% if certificate_url %}
                                    <li class="user-body">
                                        <a title="{{ "MyCertificates"|get_lang }}" href="{{ certificate_url }}">
                                            <em class="fa fa-graduation-cap"
                                                aria-hidden="true"></em> {{ "MyCertificates"|get_lang }}
                                        </a>
                                    </li>
                                {% endif %}
                                {#{% if _u.status == 1 %}
                                <li class="user-body">
                                    <a id="buycourses" type="Gestión de ventas" href="{{ _p.web }}plugin/buycourses/index.php">
                                        <i class="fa fa-shopping-cart" aria-hidden="true"></i> Gestión de ventas
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
        </div><!--/.nav-collapse -->
    </div>
</nav>

