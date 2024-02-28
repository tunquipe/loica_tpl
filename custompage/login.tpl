<link rel="stylesheet" href="{{ _p.web_css_theme }}vegas/vegas.min.css">
<div class="custompage">
        <div class="limiter">
        <div class="container-login">
            <div class="wrap-login width-login">
                <form class="login100-form validate-form" action="{{ _p.web }}" method="post">
                    <div class="row">
                        <div class="col-md-5">
                            <div class="padding-login">
                                <div class="logo" style="text-align: center">
                                    <img width="200px" class="img-responsive" style="display: inline-block;" title="{{ _s.site_name }}" src="{{ _p.web_css_theme }}images/logo.png">
                                </div>
                                <h3 class="title">Ingresa al Aula Virtual</h3>
                                {{ mgs_flash }}
                                {% if error %}
                                <div class="alert alert-warning" role="alert">
                                    {{ error }}
                                </div>
                                {% endif %}
                                <div class="form-group">
                                    <!--<label for="user"></label>-->
                                    <input type="text" class="form-control" id="user" name="login" placeholder="Usuario o Correo Electronico">
                                </div>
                                <div class="form-group">
                                    <!--<label for="password">{{ 'Password'|get_lang() }}</label>-->
                                    <input type="password" class="form-control" name="password" id="password" placeholder="{{ 'Password'|get_lang() }}">
                                </div>

                                <button type="submit" class="btn btn-primary btn-block">
                                    {{ 'LoginEnter'|get_lang() }}
                                </button>
                                {% if url_register %}
                                <a href="{{ url_register }}" class="btn btn-success btn-block" >
                                    {{ 'Registration'|get_lang() }}
                                </a >
                                {% endif %}
                                <div class="last-password">
                                    <a href="{{ url_lost_password }}">
                                        {{ 'LostPassword'|get_lang() }}
                                    </a>
                                </div>
                                <div class="software-name">
                                    <a href="{{_p.web}}" target="_blank">
                                        {{ "PoweredByX" |get_lang | format(_s.software_name) }}
                                    </a>&copy; {{ "now"|date("Y") }}
                                </div>
                            </div>

                        </div>
                        <div class="col-md-7">
                            <div id="vegas">

                            </div>
                        </div>
                    </div>

                </form>

            </div>
        </div>
    </div>
</div>
<script src="{{ _p.web_css_theme }}vegas/vegas.min.js"></script>
<script>
    $("#vegas").vegas({
        slides: [
            { src: "{{ _p.web_css_theme }}images/slide1.jpg" },
            { src: "{{ _p.web_css_theme }}images/slide2.jpg" },
            { src: "{{ _p.web_css_theme }}images/slide3.jpg" },
            { src: "{{ _p.web_css_theme }}images/slide4.jpg" },
            { src: "{{ _p.web_css_theme }}images/slide5.jpg" },
            { src: "{{ _p.web_css_theme }}images/slide6.jpg" },
            { src: "{{ _p.web_css_theme }}images/slide7.jpg" },
        ],
        cover: false,
        overlay: false,
        transition: 'blur2',
        transitionDuration: 1000,
        delay: 2500,
    });
</script>
