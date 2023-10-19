SELECT
    name,
    postalcode,
    LENGTH(name) as name_length,
    ARRAY_SIZE(SPLIT(name, ' ')) as words_number
FROM {{ ref('stg_salons') }}