-- Created by Vertabelo (http://vertabelo.com)
-- Last modification date: 2017-10-11 18:44:39.361

-- tables
-- Tables: Reviews
CREATE TABLE Reviews_a (
    listing_id int  NOT NULL,
    id int,
    date date NOT NULL,
    reviewer_id int  NOT NULL,
    reviewer_name text NOT NULL,
    comments text,
    CONSTRAINT Reviews_a_pk PRIMARY KEY (listing_id, id, reviewer_id)
);

CREATE TABLE Reviews_b (
    listing_id int,
    id int,
    date date,
    reviewer_id int,
    reviewer_name text,
    comments text,
    CONSTRAINT Reviews_b_pk PRIMARY KEY (listing_id, id, reviewer_id)
);

CREATE TABLE Reviews_c (
    listing_id int  NOT NULL,
    id int  NOT NULL,
    date date  NOT NULL,
    reviewer_id int  NOT NULL,
    reviewer_name text NOT NULL,
    comments text,
    CONSTRAINT Reviews_c_pk PRIMARY KEY (listing_id, id, reviewer_id)
);

CREATE TABLE Reviews_d (
    listing_id int  NOT NULL,
    id int  NOT NULL,
    date date  NOT NULL,
    reviewer_id int  NOT NULL,
    reviewer_name text NOT NULL,
    comments text,
    CONSTRAINT Reviews_d_pk PRIMARY KEY (listing_id, id, reviewer_id)
);

CREATE TABLE Reviews_e (
    listing_id int  NOT NULL,
    id int  NOT NULL,
    date date  NOT NULL,
    reviewer_id int  NOT NULL,
    reviewer_name text NOT NULL,
    comments text,
    CONSTRAINT Reviews_e_pk PRIMARY KEY (listing_id, id, reviewer_id)
);

CREATE TABLE Reviews_f (
    listing_id int  NOT NULL,
    id int  NOT NULL,
    date date  NOT NULL,
    reviewer_id int  NOT NULL,
    reviewer_name text NOT NULL,
    comments text,
    CONSTRAINT Reviews_f_pk PRIMARY KEY (listing_id, id, reviewer_id)
);

CREATE TABLE Neighborhoods (
    neighbourhood_group int,
    neighbourhood text NOT NULL
);

CREATE TABLE Listings (
    id int NOT NULL,
    listing_url text NOT NULL,
    scrape_id decimal(20,5),
    last_scraped date,
    name text NOT NULL,
    summary text,
    space text,
    description text,
    experiences_offered text,
    neighborhood_overview text,
    notes text,
    transit text,
    access text,
    interaction text,
    house_rules text,
    thumbnail_url text,
    medium_url text,
    picture_url text,
    xl_picture_url text,
    host_id text NOT NULL,
    host_url text,
    host_name text,
    host_since date,
    host_location text,  
    host_about text,  
    host_response_time text, 
    host_is_superhost text,  
    host_thumbnail_url text, 
    host_picture_url text,   
    host_neighbourhood text, 
    host_listings_count int,
    host_total_listings_count int,
    host_has_profile_pic text,   
    host_identity_verified text, 
    street text,  
    neighbourhood text,  
    neighbourhood_cleansed text, 
    neighbourhood_group_cleansed text,  
    city text,
    state text NOT NULL,   
    zipcode varchar(11),
    market text, 
    smart_location text, 
    country_code text,   
    country text, 
    latitude decimal(7,5) NOT NULL,   
    longitude decimal(6,3) NOT NULL,  
    is_location_exact text,  
    property_type text,  
    room_type text,  
    accommodates int,   
    bathrooms decimal(2,1),
    bedrooms decimal(3,1),    
    beds int,   
    bed_type text,   
    amenities text,  
    square_feet int,
    price money NOT NULL,
    weekly_price money,   
    monthly_price money,  
    security_deposit money,    
    cleaning_fee money,    
    guests_included int,
    extra_people money,    
    minimum_nights int,  
    maximum_nights int,  
    calendar_updated text,    
    has_availability text,    
    availability_30 int not NULL,
    availability_60 int not NULL,
    availability_90 int,
    availability_365 int,    
    calendar_last_scraped date,   
    number_of_reviews int,   
    first_review date,    
    last_review date,
    review_scores_rating int,    
    review_scores_accuracy int,  
    review_scores_cleanliness int,   
    review_scores_checkin int,   
    review_scores_communication int,  
    review_scores_location int,  
    review_scores_value text,
    requires_license text,    
    license text,
    jurisdiction_names text,  
    instant_bookable text,     
    cancellation_policy text,
    require_guest_profile_picture text,   
    require_guest_phone_verification text,    
    calculated_host_listings_count int, 
    reviews_per_month decimal(5,2)
    );