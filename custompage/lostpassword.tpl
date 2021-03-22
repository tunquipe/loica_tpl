<link
    rel="stylesheet"
    href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css"
  />
<div class="custompage">
    <div class="limiter">
        <div class="container-login">
            <div class="wrap-login width-register">
                <div class="row">
                    <div class="col-md-6">
                        <div class="logo">
                            <img width="250px" class="img-responsive animate__animated animate__bounce animate__repeat-2" title="{{ _s.site_name }}" src="{{ _p.web_css_theme }}images/header-logo.svg">
                        </div>
                        <div class="welcome">
                        |<img  width="200px" class="img-responsive animate__animated animate__bounce" title="{{ _s.site_name }}" src="{{ _p.web_css_theme }}images/lostpassword.svg">
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="form-blue" style="text-align: center;">
                            {{ form }}
                            <a href=/index.php >
                                <button type="submit">
                                    </i> {{ "ReturnLogin"|get_lang }}   
                                </button>
                            </a>
                            <div class="software-name">
                                <a href="{{_p.web}}" target="_blank">
                                    {{ "PoweredByX" |get_lang | format(_s.software_name) }}
                                </a>&copy; {{ "now"|date("Y") }}
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
