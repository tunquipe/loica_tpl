{% set session_image = 'window_list.png'|img(32, row.title) %}
<style>
    .card-course{
        display: flex;
        align-items: flex-start;
        position: relative;
        background-color: #F5F5F5;
        border-radius: 10px;
        margin-bottom: 1.8rem;
    }
    .card-course .card-number{
        margin-right: 1.6rem;
        position: relative;
        width: 65px;
        height: 65px;
        font-size: 4rem;
        font-weight: 800;
        text-align: center;
        color: #FFF;
        border-top-left-radius: 10px;
        border-bottom-left-radius: 10px;
    }

    .card-course .card-number:before{
        content: "";
        position: absolute;
        bottom: -10px;
        left: 25px;
        width: 0;
        height: 0;
        border-width: 10px 10px 0;
        border-style: solid;
        border-color: #5b71a0 transparent transparent;
    }
    .list-card-course :last-child{
        overflow: hidden;
    }

    .card-course .card-image {
        margin-right: 1.6rem;
        overflow: hidden;
        position: relative;
    }
    .card-course .card-content{
        white-space: nowrap;
        flex: 1;
        min-width: 1px;
    }
    .card-course .card-content h4 a {
        font-size: 14px;
        font-weight: 800;
        color: #5B5B5B;
    }
    @media (max-width: 480px) {
        .card-course .card-content{
            white-space: normal;
        }
        .card-course .card-content h4 a {
            font-size: 13px;
            font-weight: normal;
        }
        .card-course .card-image {
            margin-right: .5rem;
        }
        .card-course .card-number {
            width: 50px;
            height: 50px;
            font-size: 3rem;
            margin-right: 0.6rem;
        }
    }
</style>
{% for row in session %}
    <div class="panel panel-default">
        {% set collapsable = '' %}
        {% if not row.show_simple_session_info %}
            {% if row.course_list_session_style %}
                <div class="panel-heading">
                    {% if row.course_list_session_style == 1 or row.course_list_session_style == 2 %}
                        {# Session link #}
                        {% if remove_session_url == true %}
                            {{ session_image }} {{ row.title }}
                        {% else %}
                            {# Default link #}
                            {% set session_link = _p.web_main ~ 'sess06ion/index.php?session_id=' ~ row.id %}
                            {% if row.course_list_session_style == 2 and row.courses|length == 1 %}
                                {# Linkt to first course #}
                                {% set session_link = row.courses.0.link %}
                            {% endif %}

                            <a href="{{ session_link }}">
                                {{ session_image }} {{ row.title }}
                            </a>
                        {% endif %}
                    {% elseif row.course_list_session_style == 4 %}
                        {{ session_image }} {{ row.title }}
                    {% elseif row.course_list_session_style == 3 %}
                        {# Collapsible/Foldable panel #}
                        <a role="button" data-toggle="collapse" data-parent="#page-content" href="#collapse_{{ row.id }}"
                           aria-expanded="false">
                            {{ session_image }} {{ row.title }}
                        </a>
                        {% set collapsable = 'collapse' %}
                    {% endif %}
                    {% if row.show_actions %}
                        <div class="pull-right">
                            <a href="{{ _p.web_main ~ "session/resume_session.php?id_session=" ~ row.id }}">
                                <img src="{{ "edit.png"|icon(22) }}" width="22" height="22" alt="{{ "Edit"|get_lang }}"
                                     title="{{ "Edit"|get_lang }}">
                            </a>
                        </div>
                    {% endif %}
                    {% if row.collapsable_link %}
                        <div class="pull-right">
                            {{ row.collapsable_link }}
                        </div>
                    {% endif %}
                </div>
            {% endif %}

            {% if row.collapsable_link %}
                {% if row.collapsed == 1 %}
                    {% set collapsable = 'collapse' %}
                {% endif %}
            {% endif %}

            <div class="session panel-body {{ collapsable }}" id="collapse_{{ row.id }}">
                <div class="row">
                    <div class="col-md-12">
                        {% if row.show_description %}
                            {{ row.description }}
                        {% endif %}
                        <ul class="info-session list-inline">
                            {% if row.coach_name %}
                                <li>
                                    <i class="fa fa-user" aria-hidden="true"></i>
                                    {{ row.coach_name }}
                                </li>
                            {% endif %}

                            {% if row.date %}
                                <li>
                                    <i class="fa fa-calendar" aria-hidden="true"></i>
                                    {{ row.date }}
                                </li>
                            {% elseif row.duration %}
                                <li>
                                    <i class="fa fa-calendar" aria-hidden="true"></i>
                                    {{ row.duration }}
                                </li>
                            {% endif %}
                        </ul>

                        <div class="sessions-items">
                            <div class="list-card-course">
                                {% set number = -1 %}

                                {% for item in row.courses %}

                                    <div id="course_{{ row.id }}_{{ item.real_id }}" class="card-course">
                                        {% set number = number + 1 %}
                                        {% if number <= 0 %}
                                            {% set color = '#F2B66C' %}
                                        {% else %}
                                            {% set color = '#799CFA' %}
                                        {% endif %}
                                        <div class="card-number" style="background-color: {{ color }};">
                                            {% if number <= 0 %}
                                            <i class="fa fa-book" style="margin-top: 10px" aria-hidden="true"></i>
                                            {% else %}
                                            {{ number }}
                                            {% endif %}


                                        </div>
                                        <div class="card-image">
                                            <a href="{{ item.link }}">
                                                <img id="icon_{{ row.id }}_{{ item.real_id }}" class="img-responsive"
                                                     src="{{ item.thumbnails ? item.thumbnails : item.icon }}">
                                            </a>
                                        </div>
                                        <div class="card-content">
                                            <h4>{{ item.title }}</h4>
                                            <div class="list-teachers">
                                                {% if item.coaches|length > 0 %}
                                                <img src="{{ 'teacher.png'|icon(16) }}" width="16" height="16">
                                                {% for coach in item.coaches %}
                                                {{ loop.index > 1 ? ' | ' }}
                                                <a href="{{ _p.web_ajax ~ 'user_manager.ajax.php?' ~ {'a': 'get_user_popup', 'user_id': coach.user_id, 'session_id': row.id, 'course_id': item.real_id }|url_encode() }}"
                                                   data-title="{{ coach.full_name }}" class="ajax">
                                                    {{ coach.firstname }}, {{ coach.lastname }}
                                                </a>
                                                {% endfor %}
                                                {% endif %}
                                            </div>
                                        </div>
                                    </div>
                                {% endfor %}
                            </div>

                                {# {% for item in row.courses %}
                                    <div id="course_{{ row.id }}_{{ item.real_id }}" class="courses {{ view }}">
                                        <div class="row">
                                            <div class="col-md-2">
                                                <a href="{{ item.link }}" class="thumbnail">
                                                    <img id="icon_{{ row.id }}_{{ item.real_id }}" class="img-responsive"
                                                         src="{{ item.thumbnails ? item.thumbnails : item.icon }}">
                                                </a>
                                            </div>
                                            <div class="col-md-10">
                                                <h4>{{ item.title }}</h4>
                                                <div class="list-teachers">
                                                    {% if item.coaches|length > 0 %}
                                                        <img src="{{ 'teacher.png'|icon(16) }}" width="16" height="16">
                                                        {% for coach in item.coaches %}
                                                            {{ loop.index > 1 ? ' | ' }}
                                                            <a href="{{ _p.web_ajax ~ 'user_manager.ajax.php?' ~ {'a': 'get_user_popup', 'user_id': coach.user_id, 'session_id': row.id, 'course_id': item.real_id }|url_encode() }}"
                                                               data-title="{{ coach.full_name }}" class="ajax">
                                                                {{ coach.firstname }}, {{ coach.lastname }}
                                                            </a>
                                                        {% endfor %}
                                                    {% endif %}
                                                </div>
                                            </div>

                                            {% if item.student_info %}
                                                {% if item.student_info.progress is not null or item.student_info.score is not null or item.student_info.certificate is not null %}
                                                    <div class="course-student-info">
                                                        <div class="student-info">
                                                            {% if (item.student_info.progress is not null) %}
                                                                {{ "StudentCourseProgressX" | get_lang | format(item.student_info.progress) }}
                                                            {% endif %}

                                                            {% if (item.student_info.score is not null) %}
                                                                {{ "StudentCourseScoreX" | get_lang | format(item.student_info.score) }}
                                                            {% endif %}

                                                            {% if (item.student_info.certificate is not null) %}
                                                                {{ "StudentCourseCertificateX" | get_lang | format(item.student_info.certificate) }}
                                                            {% endif %}
                                                        </div>
                                                    </div>
                                                {% endif %}
                                            {% endif %}
                                        </div>
                                    </div>
                                {% endfor %} #}

                        </div>

                    </div>
                </div>
            </div>
        {% else %}
            <div class="panel-heading">
                <a href="{{ _p.web_main ~ 'session/index.php?session_id=' ~ row.id }}">
                    <img id="session_img_{{ row.id }}" src="{{ "window_list.png"|icon(32) }}" alt="{{ row.title }}"
                         title="{{ row.title }}">
                    {{ row.title }}
                </a>
            </div>
            <!-- view simple info -->
            <div class="panel-body">
                <div class="row">
                    <div class="col-md-2">
                        <a class="thumbnail" href="{{ _p.web_main ~ 'session/index.php?session_id=' ~ row.id }}">
                            <img class="img-responsive"
                                 src="{{ row.image ? _p.web_upload ~ row.image : 'session_default.png'|icon() }}"
                                 alt="{{ row.title }}" title="{{ row.title }}">
                        </a>
                    </div>
                    <div class="col-md-10">
                        <div class="info-session">
                            <p>{{ row.subtitle }}</p>
                            {% if row.show_description %}
                                <div class="description">
                                    {{ row.description }}
                                </div>
                            {% endif %}
                        </div>
                    </div>
                </div>
            </div>
            <!-- end view simple info -->
        {% endif %}
    </div>
{% endfor %}
