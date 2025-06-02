WITH raw_hosts AS (
    SELECT * from AIRBNB.RAW.RAW_HOSTS
)

SELECT
	id AS host_id,
	name AS host_name,
    is_superhost,
	created_at,
	updated_at
from raw_hosts