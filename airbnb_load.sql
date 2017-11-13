-- Un-comment only one line at a time as you
-- incrementally develop the database

SET CLIENT_ENCODING TO 'utf8';

 /*\copy Neighborhoods(neighbourhood_group,neighbourhood)        						FROM 'neighbourhoods.csv'     csv header

 \copy Reviews_a(listing_id, id, date, reviewer_id, reviewer_name, comments)		FROM 'xaa.csv'     csv header
 \copy Reviews_b(listing_id, id, date, reviewer_id, reviewer_name, comments)		FROM 'xab.csv'     csv header
 \copy Reviews_c(listing_id, id, date, reviewer_id, reviewer_name, comments)		FROM 'xac.csv'     csv header
 \copy Reviews_d(listing_id, id, date, reviewer_id, reviewer_name, comments)		FROM 'xad.csv'     csv header
 \copy Reviews_e(listing_id, id, date, reviewer_id, reviewer_name, comments)		FROM 'xae.csv'     csv header
 \copy Reviews_f(listing_id, id, date, reviewer_id, reviewer_name, comments)		FROM 'xaf.csv'     csv header*/
 
 \copy Listings(id,	listing_url, scrape_id,	last_scraped,name,summary,space,description,experiences_offered,neighborhood_overview,notes,transit,access,interaction, house_rules,thumbnail_url,	medium_url,	picture_url,xl_picture_url,	host_id,host_url,host_name,	host_since,	host_location,	host_about,	host_response_time,	host_is_superhost,	host_thumbnail_url,	host_picture_url,	host_neighbourhood,	host_listings_count,host_total_listings_count, host_has_profile_pic,	host_identity_verified,	street,	neighbourhood,	neighbourhood_cleansed,	neighbourhood_group_cleansed,	city,	state,	zipcode,	market,	smart_location,	country_code,	country,	latitude,longitude,	is_location_exact,property_type,room_type,	accommodates,	bathrooms,	bedrooms,	beds,	bed_type,	amenities,	square_feet,	price,	weekly_price,	monthly_price,	security_deposit,	cleaning_fee,	guests_included,extra_people,	minimum_nights,	maximum_nights,	calendar_updated,	has_availability,	availability_30,availability_60,availability_90,availability_365,	calendar_last_scraped,	number_of_reviews,	first_review,last_review,	review_scores_rating,	review_scores_accuracy,	review_scores_cleanliness,	review_scores_checkin,	review_scores_communication,review_scores_location,	review_scores_value,requires_license,	license,jurisdiction_names,	instant_bookable,	cancellation_policy,require_guest_profile_picture,	require_guest_phone_verification,calculated_host_listings_count,	reviews_per_month)		FROM 'listings.csv'     csv header
 