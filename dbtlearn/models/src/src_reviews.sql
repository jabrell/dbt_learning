WITH raw_reviews AS (
    SELECT * FROM AIRBNB.RAW.RAW_REVIEWS
)

SELECT
	listing_id,
	date AS review_date,
	reviewer_name,
	COMMENTS AS review_text,
	SENTIMENT AS review_sentiment
FROM raw_reviews