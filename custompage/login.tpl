<link
    rel="stylesheet"
    href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css"
  />
<div class="custompage">
    <div class="limiter">
        <div class="container-login">
            <div class="wrap-login width-login" style="width: 1020px;">
                <div class="row">
                    <div class="col-md-6">
                        <div class="logo" style="margin-top:1.5em">
                            <img width="250px" class="img-responsive animate__animated animate__bounce animate__repeat-2" title="{{ _s.site_name }}"
                                 src="{{ _p.web_css_theme }}images/header-logo.svg">
                        </div>
                        <div class="welcome" style="margin-top:4em">
                            <img class="img-responsive animate__animated animate__bounce"  title="{{ _s.site_name }}"
                                 src="{{ _p.web_css_theme }}images/welcome.svg">
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="form-blue">
                        <form style="padding: 0em 5em 0em 5em" class="login100-form validate-form" action="{{ _p.web }}" method="post">
                            <div class="text-center">
                                <h3 style="margin-top: 0.3em;" class="title">{{ 'WelcomePortal'|get_lang() }}</h3>
                                <h4 style="margin-bottom: 2em;">{{ 'LoginPortal'|get_lang() }}</h>
                            </div>
                            {{ mgs_flash }}
                            {% if error %}
                            <div class="alert alert-warning" role="alert">
                                {{ error }}
                            </div>
                            {% endif %}
                            <div class="form-group">
                                <label for="user">{{ 'LoginOrEmailAddress'|get_lang() }}</label>
                                <input type="text" class="form-control" id="user" name="login">
                            </div>
                            <div class="form-group">
                                <label for="password">{{ 'Password'|get_lang() }}</label>
                                <input type="password" class="form-control" name="password" id="password">
                            </div>

                            <div class="last-password" style="text-align: right; margin-top: -1em;">
                                <a href="{{ url_lost_password }}">
                                    {{ 'LostPassword'|get_lang() }} </br>
                                </a>
                            </div>

                            <button style="border-radius: 3em;" type="submit" class="btn btn-primary btn-block">
                                {{ 'LoginEnter'|get_lang() }}
                            </button>
                            {% if url_register %}
                            <a href="{{ url_register }}" class="btn btn-success btn-block">
                                {{ 'Registration'|get_lang() }}
                            </a>
                            {% endif %}
                        </form>
                        <h3 style="text-align:center; margin-top: 2em;"><b>{{'Help'|get_lang() }}</b></h3>
                        <div class="text-help">
                           <h5 style="text-align:center"> {{ 'HelpLoginPortal'|get_lang() }}</h5>
                        </div>
                        <div style="text-align:center; margin-bottom: 3em;">
                            <button type="submit"  href="#" style="background:#063d70; border-radius:18px; padding:4px 15px 6px 15px; border-color:#ff7123; margin-top: 1em">
                                {{ 'Support'|get_lang() }} 
                            </button>  
                        </div>
                        <!--
                        <div class="software-name">
                            <a href="{{_p.web}}" target="_blank">
                                {{ "PoweredByX" |get_lang | format(_s.software_name) }}
                            </a>&copy; {{ "now"|date("Y") }}
                        </div>
-->
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

