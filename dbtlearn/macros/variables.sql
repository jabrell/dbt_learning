{% macro learn_variables() %}
    {# Jinja variable#}
    {% set my_name = "Jan" %}
    {{ log("My name: " ~ my_name, info=True) }}

    {# dbt variables #}
    {{ log("Welcome to dbt: " ~ var("user_name", "BoringDefaultUser") ~ "!", info=True) }}
    {# dbt variables: default from project.yaml #}
    {{ log("Welcome to dbt: " ~ var("user_name_project") ~ "!", info=True) }}
{% endmacro %}