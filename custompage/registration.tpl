<div class="custompage">
    <div class="limiter">
        <div class="container-login">
            <div class="wrap-login width-register">
                <div class="logo-register">
                    <a href="{{ _p.web }}">
                    <img width="200px" title="{{ _s.site_name }}" src="{{ _p.web_css_theme }}images/logo.png">
                    </a>
                </div>
                <h3 class="title">Registro nuevo usuario</h3>

                {{ form }}

                <div class="software-name">
                    <a href="{{_p.web}}" target="_blank">
                        {{ "PoweredByX" |get_lang | format(_s.software_name) }}
                    </a>&copy; {{ "now"|date("Y") }}
                </div>
            </div>
        </div>
    </div>
</div>
