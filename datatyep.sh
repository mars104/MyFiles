{% macro is_string(column_name) %}
  {{ column_name }} IS NULL OR {{ column_name }} = '' OR SAFE.REGEXP_CONTAINS({{ column_name }}, r'^.*$')
{% endmacro %}

{% macro is_bytes(column_name) %}
  {{ column_name }} IS NULL OR SAFE.REGEXP_CONTAINS(TO_BASE64({{ column_name }}), r'^[A-Za-z0-9+/=]*$')
{% endmacro %}

{% macro is_numeric(column_name) %}
  {{ column_name }} IS NULL OR SAFE_CAST({{ column_name }} AS NUMERIC) IS NOT NULL
{% endmacro %}

{% macro is_bignumeric(column_name) %}
  {{ column_name }} IS NULL OR SAFE_CAST({{ column_name }} AS BIGNUMERIC) IS NOT NULL
{% endmacro %}

{% macro is_time(column_name) %}
  {{ column_name }} IS NULL OR SAFE_CAST({{ column_name }} AS TIME) IS NOT NULL
{% endmacro %}

{% macro is_datetime(column_name) %}
  {{ column_name }} IS NULL OR SAFE_CAST({{ column_name }} AS DATETIME) IS NOT NULL
{% endmacro %}

{% macro is_geography(column_name) %}
  {{ column_name }} IS NULL OR ST_GEOGFROMTEXT({{ column_name }}) IS NOT NULL
{% endmacro %}

{% macro is_array(column_name) %}
  {{ column_name }} IS NULL OR ARRAY_LENGTH({{ column_name }}) IS NOT NULL
{% endmacro %}

{% macro is_struct(column_name) %}
  {{ column_name }} IS NULL OR STRUCT_LENGTH({{ column_name }}) IS NOT NULL
{% endmacro %}
