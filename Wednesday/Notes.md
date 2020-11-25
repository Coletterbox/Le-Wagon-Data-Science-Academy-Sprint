## SQL Sprint

### Intro

relational database\
structured query language\
unique identifiers\
primary keys and foreign keys - connect tables\
record stored as row\
one-to-many\
many-to-one\
SQL designer\
SQLite - for development/demo, not production - tables in one file\
sqliteonline.com\
select, from, where, and, order by\
select count(*)\
group by\
as\
order by count(*) works on SQLite, but must use alias usually\
join, on

### DB design

#### Question 1: How many tables composes the movies.sqlite DB?
- two: directors, movies
#### Question 2: How many columns are in the table movies?
- thirteen
#### Question 3: Can you give an example of primary key in this DB? And a foreign key?
- movies.id is a primary key
- director_id in movies is a foreign key
#### Question 4: What kind of relation links the 2 tables?
- one to many: one director can have many movies
