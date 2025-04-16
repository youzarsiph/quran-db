BEGIN;
--
-- Create model Language
--
DROP TABLE IF EXISTS "languages";

CREATE TABLE "languages" (
  "id" integer NOT NULL PRIMARY KEY AUTOINCREMENT,
  "name" varchar(32) NOT NULL UNIQUE,
  "code" varchar(2) NOT NULL UNIQUE
);

--
-- Create model Collection
--
DROP TABLE IF EXISTS "collections";

CREATE TABLE "collections" (
  "id" integer NOT NULL PRIMARY KEY AUTOINCREMENT,
  "type" smallint unsigned NOT NULL CHECK ("type" >= 0),
  "name" varchar(64) NOT NULL UNIQUE,
  "description" varchar(512) NULL,
  "language_id" bigint NOT NULL REFERENCES "languages" ("id") DEFERRABLE INITIALLY DEFERRED
);

CREATE INDEX "collections_description_64108f9e" ON "collections" ("description");
CREATE INDEX "collections_language_id_dfff5c53" ON "collections" ("language_id");

--
-- Create model Item
--
DROP TABLE IF EXISTS "items";

CREATE TABLE "items" (
  "id" integer NOT NULL PRIMARY KEY AUTOINCREMENT,
  "content" text NOT NULL,
  "chapter_id" bigint NULL REFERENCES "chapters" ("id") DEFERRABLE INITIALLY DEFERRED,
  "collection_id" bigint NOT NULL REFERENCES "collections" ("id") DEFERRABLE INITIALLY DEFERRED,
  "verse_id" bigint NULL REFERENCES "verses" ("id") DEFERRABLE INITIALLY DEFERRED
);

CREATE INDEX "items_content_9e1aa50c" ON "items" ("content");
CREATE INDEX "items_chapter_id_15e22b60" ON "items" ("chapter_id");
CREATE INDEX "items_collection_id_e4b7bb9c" ON "items" ("collection_id");
CREATE INDEX "items_verse_id_8f001483" ON "items" ("verse_id");

COMMIT;
