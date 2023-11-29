
CREATE TABLE IF NOT EXISTS public."Campaign"
(
    company_name character varying NOT NULL,
    description character varying NOT NULL,
    goal numeric NOT NULL,
    pledged numeric NOT NULL,
    outcome character varying NOT NULL,
    backers_count integer NOT NULL,
    country character(2) NOT NULL,
    currency character(3) NOT NULL,
    launched_date character varying(10) NOT NULL,
    end_date character varying(10) NOT NULL,
    category_id character varying(4) NOT NULL,
    "sub-category_id" character varying NOT NULL,
    cf_id integer Primary Key,
    contact_id integer NOT NULL
);

CREATE TABLE IF NOT EXISTS public."Category"
(
    category_id character varying(4) NOT NULL,
    category character varying Primary Key
);

CREATE TABLE IF NOT EXISTS public."Contacts"
(
    contact_id integer Primary Key,
    "first name" character varying NOT NULL,
    "last name" character varying NOT NULL,
    email character varying NOT NULL
);

CREATE TABLE IF NOT EXISTS public."Subcategory"
(
    "sub-category_id" character varying Primary Key,
    sub_category character varying NOT NULL
);

ALTER TABLE IF EXISTS public."Category"
    ADD FOREIGN KEY (category_id)
    REFERENCES public."Campaign" (category_id) MATCH SIMPLE;


ALTER TABLE IF EXISTS public."Contacts"
    ADD FOREIGN KEY (contact_id)
    REFERENCES public."Campaign" (contact_id) MATCH SIMPLE;


ALTER TABLE IF EXISTS public."Subcategory"
    ADD FOREIGN KEY ("sub-category_id")
    REFERENCES public."Campaign" ("sub-category_id") MATCH SIMPLE;

SELECT * from Contacts;
SELECT * from Category;
SELECT * from Subcategory;
SELECT * from Campaign;