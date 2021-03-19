    </div>
    </section>
    <!-- END CONTENT -->

    </main>
    <!-- END MAIN -->
    {% if show_footer == true %}
        <!-- START FOOTER -->
        {% include 'layout/page_footer.tpl'|get_template %}
        <!-- END FOOTER -->
    {% endif %}

    {% include 'layout/modals.tpl'|get_template %}
</body>
</html>