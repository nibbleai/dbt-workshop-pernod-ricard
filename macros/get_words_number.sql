{%- macro get_words_number(name) -%}
    ARRAY_SIZE(SPLIT({{ name }}, ' '))
{%- endmacro -%}