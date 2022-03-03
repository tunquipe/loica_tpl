<div id="logo-header" {{ mail_header_style }}>
    <div style="margin-bottom: 20px; margin-top: 10px;">
        {% if logo_id %}
            <img src="{{ logo_id }}"/>
        {% else %}
            <img src="{{ _p.web_css_theme }}images/header-logo.png"/>
        {% endif %}
    </div>
</div>
