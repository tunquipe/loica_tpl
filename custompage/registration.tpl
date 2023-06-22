<div class="custompage">
    <div class="limiter">
        <div class="container-login">
            <div class="wrap-login width-register">
                <div class="logo-register">
                    {% if picture %}
                        <div class="row">
                            <div class="col-md-6">
                                <a href="{{ _p.web }}">
                                    <img width="250px" title="{{ _s.site_name }}" src="{{ _p.web_css_theme }}images/logo.svg">
                                </a>
                            </div>
                            <div class="col-md-6">
                                <a href="{{ _p.web }}">
                                    <img width="150px" title="{{ _s.site_name }}" src="{{ picture }}">
                                </a>
                            </div>
                        </div>
                    {% else %}
                        <a href="{{ _p.web }}">
                            <img width="250px" title="{{ _s.site_name }}" src="{{ _p.web_css_theme }}images/logo.svg">
                        </a>
                    {% endif %}
                </div>
                <h3 class="title">{{ title }}</h3>

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

<script>
    let urlAjax = '{{ url_plugin }}/src/ajax.php?action=get_position';
    $("#registration-two_sector").change(function (){
        let idSector = $("#registration-two_sector").val();
        $.ajax({
            url: urlAjax + "&id_sector=" + idSector,
            type: 'post',
            dataType: 'json',
            success: function (response){
                let item = "";
                $.each(response, function(index, value){
                    //console.log(index + '----'+ value);
                    item+='<option value="'+index+'">'+value+'</option>';
                });
                item+='<option value="999">Otros</option>';
                $('#registration-two_position_company').html(item);
                $('#registration-two_position_company').selectpicker('refresh');
            },
            error: function (){
                alert("error")
            }
        });
    });


</script>