\connect postgres

drop database if exists airbnb;
create database airbnb;

\connect airbnb;

 \i airbnb_create.sql

 \i airbnb_load.sql