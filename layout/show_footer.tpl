    </div>
    </section>
    <!-- END CONTENT -->
    </main>
    {% if show_footer == true %}
    <!-- START FOOTER -->
        {% include 'layout/page_footer.tpl'|get_template %}
    <!-- END FOOTER -->
    {% endif %}
    <!-- END MAIN -->

    {% include 'layout/modals.tpl'|get_template %}
</body>
</html>