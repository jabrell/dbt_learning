SELECT *
FROM {{ ref("dim_listings_cleansed") }} l
JOIN {{ ref("fct_reviews") }} f
USING (listing_id)
WHERE l.created_at >= f.review_date
LIMIT 10