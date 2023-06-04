<div id="navigation" class="notification-panel">
    {{ help_content }}
    {{ bug_notification }}
</div>
{% block topbar %}
    {% include 'layout/topbar.tpl'|get_template %}
{% endblock %}

{% if header_extra_content is not null %}
    {{ header_extra_content }}
{% endif %}

<div class="container">
    <div class="row">
        <div class="col-xs-12 col-md-3">
            <div class="logo">
                {{ logo }}
            </div>
        </div>
        <div class="col-xs-12 col-md-9">
            {% block menu %}
            {% include 'layout/menu.tpl'|get_template %}
            {% endblock %}
        </div>
    </div>
</div>

{% include 'layout/course_navigation.tpl'|get_template %}
