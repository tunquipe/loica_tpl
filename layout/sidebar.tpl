
<script>

        /* Set the width of the sidebar to 250px and the left margin of the page content to 250px */
        function openNav() {
            document.getElementById("sidebar").style.left = "0";
            document.getElementById("sidebar-open-btn").style.display = "none";
            document.getElementById("sidebar-close-btn").style.display = "block";
        }

        /* Set the width of the sidebar to 0 and the left margin of the page content to 0 */
        function closeNav() {
            document.getElementById("sidebar").style.left = "-230px";
            document.getElementById("sidebar-open-btn").style.display = "block";
            document.getElementById("sidebar-close-btn").style.display = "none";
        }

</script>

<a id="sidebar-open-btn" onclick="openNav()" class="btn btn-default" href="#">
    <i class="fa fa-bars" aria-hidden="true"></i>
</a>
<a id="sidebar-close-btn" onclick="closeNav()" class="btn btn-default" href="#">
    <i class="fa fa-times" aria-hidden="true"></i>
</a>
<div id="sidebar" class="sidebar">

    {% if plugin_menu_top %}
        {{ display.pluginSidebar('sidebar-top', plugin_menu_top) }}
    {% endif %}

    {% include 'layout/login_form.tpl'|get_template %}

    {% if _u.logged  == 1 %}
        {{ user_image_block }}
    {% endif %}

    <div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">
        {% if profile_block %}
            <div class="panel panel-default">
                <div class="panel-heading" role="tab" id="headingOne">
                    <h4 class="panel-title">
                        <img src="{{ _p.web_css_theme }}icons/svg/user.svg" width="24px" height="24px"/>
                        <a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                            {{ 'Profile'|get_lang }}
                        </a>
                    </h4>
                </div>
                <div id="collapseOne" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="headingOne">
                    <div class="panel-body">
                        <ul class="list-group">
                            {% for item in profile_block %}
                                <li class="list-group-item {{ item.class }}"><a href="{{ item.link }}">{{ item.title }}</a></li>
                            {% endfor %}
                        </ul>

                    </div>
                </div>
            </div>
        {% endif %}
        {% if course_block %}
            <div class="panel panel-default">
                <div class="panel-heading" role="tab" id="headingTwo">
                    <h4 class="panel-title">
                        <img src="{{ _p.web_css_theme }}icons/svg/course.svg" width="24px" height="24px"/>
                        <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
                            {{ 'Courses'|get_lang }}
                        </a>
                    </h4>
                </div>
                <div id="collapseTwo" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingTwo">
                    <div class="panel-body">
                        <ul class="list-group">
                            {% for item in course_block %}
                                <li class="list-group-item {{ item.class }}"><a href="{{ item.link }}">{{ item.title }}</a></li>
                            {% endfor %}
                        </ul>
                    </div>
                </div>
            </div>
        {% endif %}
        {% if skills_block %}
            <div class="panel panel-default">
                <div class="panel-heading" role="tab" id="headingThree">
                    <h4 class="panel-title">
                        <img src="{{ _p.web_css_theme }}icons/svg/badge.svg" width="24px" height="24px"/>
                        <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
                            {{ 'Skills'|get_lang }}
                        </a>
                    </h4>
                </div>
                <div id="collapseThree" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingThree">
                    <div class="panel-body">
                        <ul class="list-group">
                            {% for item in skills_block %}
                                <li class="list-group-item {{ item.class }}"><a href="{{ item.link }}">{{ item.title }}</a></li>
                            {% endfor %}
                        </ul>
                    </div>
                </div>
            </div>
        {% endif %}

        {% if _u.is_admin %}
            {% if navigation_links %}
                <div class="panel panel-default">
                    <div class="panel-heading" role="tab" id="headingFour">
                        <h4 class="panel-title">
                            <img src="{{ _p.web_css_theme }}icons/svg/globe.svg" width="24px" height="24px"/>
                            <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseFour" aria-expanded="false" aria-controls="collapseFour">
                                {{ 'MainNavigation'|get_lang }}
                            </a>
                        </h4>
                    </div>
                    <div id="collapseFour" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingFour">
                        <div class="panel-body">
                            <ul class="list-group">
                                {% for item in navigation_links %}
                                    <li class="list-group-item {{ item.class }}"><a href="{{ item.link }}">{{ item.title }}</a></li>
                                {% endfor %}
                            </ul>
                        </div>
                    </div>
                </div>
            {% endif %}
        {% endif %}

        {% if help_block %}
            <div class="panel panel-default">
                <div class="panel-heading" role="tab" id="headingFive">
                    <h4 class="panel-title">
                        <img src="{{ _p.web_css_theme }}icons/svg/link.svg" width="24px" height="24px"/>
                        <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseFive" aria-expanded="false" aria-controls="collapseFive">
                            {{ 'MenuGeneral'|get_lang }}
                        </a>
                    </h4>
                </div>
                <div id="collapseFive" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingFive">
                    <div class="panel-body">
                        <ul class="list-group">
                            {{ help_block }}
                        </ul>
                    </div>
                </div>
            </div>
        {% endif %}
    </div>

    {% if grade_book_sidebar %}
        <div class="panel-group" id="skill" role="tablist" aria-multiselectable="true">
            <div class="panel panel-default" id="gradebook_block">
                <div class="panel-heading" role="tab">
                    <h4 class="panel-title">
                        <a role="button" data-toggle="collapse"
                           data-parent="#skill"
                           href="#skillCollapse"
                           aria-expanded="true"
                           aria-controls="skillCollapse">
                            {{ 'Gradebook' | get_lang }}
                        </a>
                    </h4>
                </div>
                <div style="" aria-expanded="true" id="skillCollapse" class="panel-collapse collapse in" role="tabpanel">
                    <div class="panel-body">
                        <ul class="list-group">
                            <li class="list-group-item {{ item.class }}">
                                {{ 'Progress' | get_lang  }} : {{ grade_book_progress }} %
                                <br />
                                {% for badge in grade_book_badge_list %}
                                    <div class="badge_sidebar">
                                        {% for skill in badge.skills %}
                                            {% if badge.finished %}
                                                <img class="badge_sidebar_image " src ="{{ skill.icon_big }}" />
                                            {% else %}
                                                <img class="badge_sidebar_image badge_sidebar_image_transparency"
                                                     src = "{{ skill.icon_big }}" />
                                            {% endif %}
                                            <div class="badge_sidebar_title">
                                                {{ skill.name }}
                                            </div>
                                        {% endfor %}
                                    </div>
                                {% endfor %}
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    {% endif %}
    {{ certificates_search_block }}



    {{ search_block }}
    {{ classes_block }}

    {% if plugin_menu_bottom %}
        {{ display.pluginSidebar('sidebar-bottom', plugin_menu_bottom) }}
    {% endif %}
</div>