CREATE TYPE era AS ENUM (
  'old_republic',
  'clone_wars',
  'civil_war'
);

CREATE TYPE book_media_type AS ENUM (
  'audio_book',
  'e_book',
  'physical'
);

CREATE TYPE book_status AS ENUM (
  'not_read',
  'wishlist',
  'in_progress',
  'finished'
);

CREATE TABLE account (
  "id" SERIAL PRIMARY KEY NOT NULL,
  "email" varchar,
  "phone" int,
  "created_at" date DEFAULT CURRENT_DATE,
  "locale" varchar,
  "given_name" varchar,
  "family_name" varchar
);

CREATE TABLE read_book (
  "id" SERIAL PRIMARY KEY NOT NULL,
  "book_id" INT NOT NULL,
  "rating" float8,
  "media_type" book_media_type,
  "user_id" int,
  "status" book_status,
  "last_read" date DEFAULT CURRENT_DATE
);

CREATE TABLE book (
  "id" SERIAL PRIMARY KEY NOT NULL,
  "title" varchar,
  "author" int not null,
  "author_link" varchar,
  "pages" int,
  "era" era,
  "series" varchar,
  "release_date" date,
  "is_legends" boolean,
  "image_name" varchar,
  "num_of_ratings" int,
  "rating" float,
  "tags" varchar[] NOT NULL
);

CREATE TABLE author (
  "id" SERIAL PRIMARY KEY NOT NULL,
  "name" varchar unique
);

ALTER TABLE "read_book" ADD FOREIGN KEY ("user_id") REFERENCES "account" ("id");
ALTER TABLE "read_book" ADD FOREIGN KEY ("book_id") REFERENCES "book" ("id");
ALTER TABLE "book" ADD FOREIGN KEY ("author") REFERENCES "author" ("id");