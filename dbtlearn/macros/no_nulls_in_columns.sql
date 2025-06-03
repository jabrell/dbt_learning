{% macro no_nulls_in_columns(model) %}
    SELECT * FROM {{ model }} WHERE
--- adapter provides the interface with database
--- the hyphen - strips the whitespaces at the end of the line
    {% for col in adapter.get_columns_in_relation(model) -%}
--- build the or condition
        {{ col.column }} IS NULL OR
    {% endfor %}
--- end the or condition
    FALSE
{% endmacro %}