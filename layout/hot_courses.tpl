

{% if hot_courses is not null and hot_courses is not empty %}
<section class="hot-courses">
        <h3>
            {{ "HottestCourses"|get_lang}}
        </h3>
        <div id="list-hot-courses" class="grid-courses">
            <div class="owl-carousel owl-theme">
                  {% include 'layout/hot_course_item.tpl'|get_template %}
            </div>
        </div>
</section>
{% endif %}

<script>
    $(document).ready(function () {
        $(".owl-carousel").owlCarousel({
            loop: false,
            margin: 10,
            nav: true,
            dots: false,
            responsive: {
                0: {
                    items: 1
                },
                600: {
                    items: 3
                },
                1000: {
                    items: 4
                }
            }
        });
    });
</script>
