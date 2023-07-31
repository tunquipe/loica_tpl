<div class="row">
    <div class="col-md-12">
        <div class="grid-category text-center">
            {% for category in categories %}
            <div class="category-item" style="background-color: {{ category.color }}">
                <h2 class="title"><a href="?action=display_sessions&category={{ category.id }}">{{ category.name }}</a></h2>
            </div>
            {% endfor %}
        </div>
    </div>

</div>