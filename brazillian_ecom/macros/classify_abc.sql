

{% macro classify_abc(column_name) %}

    {% set class %}
        CASE
            WHEN {{ column_name }} BETWEEN 0 AND 100 THEN 'D'
            WHEN {{ column_name }} BETWEEN 101 AND 200 THEN 'C'
            WHEN {{ column_name }} BETWEEN 201 AND 300 THEN 'B'
            ELSE 'A'
        END
    {% endset %}
    {{ class }}
    
{% endmacro %}