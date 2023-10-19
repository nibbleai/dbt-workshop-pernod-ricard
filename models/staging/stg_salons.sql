WITH data AS (
    SELECT
        name,
        lat,
        lng,
        postalcode
    FROM
        {{ source('raw', 'coiffeurs') }} c
    WHERE c.postalcode != '[ND]'
)

SELECT d.*, cdr.nom_departement, cdr.nom_region
FROM data d
LEFT JOIN {{ ref('communes_departement_region') }} cdr ON d.postalcode = cdr.code_postal
