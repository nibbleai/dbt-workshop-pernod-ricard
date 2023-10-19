SELECT *
FROM
    {{ source('raw', 'coiffeurs') }} c
    LEFT JOIN {{ ref('communes_departement_region') }} cdr ON c.postalcode = cdr.code_postal
WHERE c.postalcode != '[ND]'