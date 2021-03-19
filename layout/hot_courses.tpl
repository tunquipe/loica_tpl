<link rel="stylesheet" href="owlcarousel/dist/assets/owl.carousel.min.css">
<link rel="stylesheet" href="owlcarousel/dist/assets/owl.theme.default.min.css">

{% if hot_courses is not null and hot_courses is not empty %}
<section class="hot-courses">
    <div class="page-header">
        <h4>
            {% if _u.is_admin %}
            <span class="pull-right">
                <a title="{{ 'Hide'|get_lang }}"
                   alt="{{ 'Hide'|get_lang }}"
                   href="{{ _p.web_main }}admin/settings.php?search_field=show_hot_courses&submit_button=&_qf__search_settings=&category=search_setting">
                    <i class="fa fa-eye" aria-hidden="true"></i>
                </a>
            </span>
            {% endif %}
        </h4>
    </div>

    <div class="container-course" style="background-color: #02d8f5">
        <h3 style="color:aliceblue;text-align: center; padding-top: 3em; text-transform: uppercase;font-weight: bold;">
                {{ "HottestCourses"|get_lang}}
        </3>
        <div id="list-hot-courses" class="grid-courses">
            <div class="container">
                <div class="owl-carousel owl-theme">
                      {% include 'layout/hot_course_item.tpl'|get_template %}               
                </div>
            </div>
        </div>
    </div>
    
</section>
{% endif %}

<script
    src="https://code.jquery.com/jquery-3.6.0.min.js"
    integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4="
    crossorigin="anonymous">
</script>

<script src="owlcarousel/dist/owl.carousel.min.js"></script>

<script>
    $(document).ready(function(){
    $(".owl-carousel").owlCarousel({
    loop:true,
    margin:10,
    nav:true,
    responsive:{
        0:{
            items:1
        },
        600:{
            items:3
        },
        1000:{
            items:4
        }
    }
});
    });
</script>
