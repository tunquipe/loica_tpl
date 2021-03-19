{% extends 'layout/page.tpl'|get_template %}
{% import 'default/macro/macro.tpl' as display %}

{% block body %}
    {% if plugin_main_top %}
        {{ display.pluginPanel('main-top', plugin_main_top) }}
    {% endif %}

    <div class="page-inside">
        <div class="row">

                {% include 'layout/sidebar.tpl'|get_template %}

            <div class="col-md-12">

                    <div class="container">
                    {% if plugin_content_top %}
                        <div class="page-content-top">
                            {{ plugin_content_top }}
                        </div>
                    {% endif %}

                    {{ sniff_notification }}

                    <!-- BLOCK NOTICE -->
                    {% if notice_block %}
                        <div class="alert alert-success alert-user" role="alert">
                            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                            <img src="{{ _p.web_css_theme }}icons/svg/man.svg" width="64px" class="img-alert"/>
                            {{ notice_block }}
                        </div>
                    {% endif %}

                    {% if home_welcome %}
                        <article id="home-welcome">
                            {{ home_welcome }}
                        </article>
                    {% endif %}

                    {% if home_include %}
                        <article id="home-include">
                            {{ home_include }}
                        </article>
                    {% endif %}

                    {% block page_body %}
                        {% include 'layout/page_body.tpl'|get_template %}
                    {% endblock %}

                    {% if welcome_to_course_block %}
                        <article id="homepage-course">
                            {{ welcome_to_course_block }}
                        </article>
                    {% endif %}

                    {% block content %}
                        {% if content is not null %}
                            <section id="page" class="{{ course_history_page }}">
                                {{ content }}
                            </section>
                        {% endif %}
                    {% endblock %}

                    {% if announcements_block %}
                        <article id="homepage-announcements">
                            {{ announcements_block }}
                        </article>
                    {% endif %}

                    {% if course_category_block %}
                        <article id="homepage-course-category">
                            {{ course_category_block }}
                        </article>
                    {% endif %}
                    {% include 'layout/hot_courses.tpl'|get_template %}
                    {% include 'session/sessions_current.tpl'|get_template %}
                    {% if plugin_content_bottom %}
                        <div id="plugin_content_bottom">
                            {{ plugin_content_bottom }}
                        </div>
                    {% endif %}
                    </div>

            </div>
        </div>
    </div>

    {% if plugin_main_bottom %}
        {{ display.pluginPanel('main-bottom', plugin_main_bottom) }}
    {% endif %}
{% endblock %}
