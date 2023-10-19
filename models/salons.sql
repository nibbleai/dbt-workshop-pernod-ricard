SELECT
    name,
    postalcode,
    LENGTH(name) as name_length,
    {{ get_words_number('name') }} as words_number
FROM {{ ref('stg_salons') }}