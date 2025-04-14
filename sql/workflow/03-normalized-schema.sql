PRAGMA "journal_mode" = 'WAL';
PRAGMA "foreign_keys" = ON;

BEGIN;

--
-- Create model Chapter (As-Suwar)
--
DROP TABLE IF EXISTS "chapters";

CREATE TABLE "chapters" (
  "id" integer NOT NULL PRIMARY KEY AUTOINCREMENT,
  "name" varchar(16) NOT NULL UNIQUE,
  "order" smallint unsigned NOT NULL UNIQUE CHECK ("order" >= 0),
  "type" bool NOT NULL,
  "verse_count" smallint unsigned NOT NULL CHECK ("verse_count" >= 0) DEFAULT 0,
  "page_count" smallint unsigned NOT NULL CHECK ("page_count" >= 0) DEFAULT 0
);

CREATE INDEX "chapters_verse_count_5777cda7" ON "chapters" ("verse_count");
CREATE INDEX "chapters_page_count_7f097df8" ON "chapters" ("page_count");

--
-- Create model Part (Al-Ajzaa)
--
DROP TABLE IF EXISTS "parts";

CREATE TABLE "parts" (
  "id" integer NOT NULL PRIMARY KEY AUTOINCREMENT,
  "name" varchar(16) NOT NULL UNIQUE,
  "verse_count" smallint unsigned NOT NULL CHECK ("verse_count" >= 0) DEFAULT 0,
  "page_count" smallint unsigned NOT NULL CHECK ("page_count" >= 0) DEFAULT 0
);

CREATE INDEX "parts_verse_count_9501296e" ON "parts" ("verse_count");
CREATE INDEX "parts_page_count_606da20b" ON "parts" ("page_count");

--
-- Create model Group (Al-Ahzab)
--
DROP TABLE IF EXISTS "groups";

CREATE TABLE "groups" (
  "id" integer NOT NULL PRIMARY KEY AUTOINCREMENT,
  "name" varchar(16) NOT NULL UNIQUE,
  "verse_count" smallint unsigned NOT NULL CHECK ("verse_count" >= 0) DEFAULT 0,
  "page_count" smallint unsigned NOT NULL CHECK ("page_count" >= 0) DEFAULT 0,
  "part_id" bigint NULL REFERENCES "parts" ("id") DEFERRABLE INITIALLY DEFERRED
);

CREATE INDEX "groups_verse_count_cbf9c194" ON "groups" ("verse_count");
CREATE INDEX "groups_page_count_1e918a07" ON "groups" ("page_count");
CREATE INDEX "groups_part_id_5cc7ea42" ON "groups" ("part_id");

--
-- Create model Quarter (Al-Arbaa)
--
DROP TABLE IF EXISTS "quarters";

CREATE TABLE "quarters" (
  "id" integer NOT NULL PRIMARY KEY AUTOINCREMENT,
  "name" varchar(16) NOT NULL UNIQUE,
  "verse_count" smallint unsigned NOT NULL CHECK ("verse_count" >= 0) DEFAULT 0,
  "page_count" smallint unsigned NOT NULL CHECK ("page_count" >= 0) DEFAULT 0,
  "group_id" bigint NULL REFERENCES "groups" ("id") DEFERRABLE INITIALLY DEFERRED,
  "part_id" bigint NULL REFERENCES "parts" ("id") DEFERRABLE INITIALLY DEFERRED
);

CREATE INDEX "quarters_verse_count_3da85c21" ON "quarters" ("verse_count");
CREATE INDEX "quarters_page_count_ac1d8f5e" ON "quarters" ("page_count");
CREATE INDEX "quarters_group_id_425bbd82" ON "quarters" ("group_id");
CREATE INDEX "quarters_part_id_ffd45a90" ON "quarters" ("part_id");

--
-- Create model Page (As-Safahat)
--
DROP TABLE IF EXISTS "pages";

CREATE TABLE "pages" (
  "id" integer NOT NULL PRIMARY KEY AUTOINCREMENT,
  "name" varchar(16) NOT NULL UNIQUE,
  "verse_count" smallint unsigned NOT NULL CHECK ("verse_count" >= 0) DEFAULT 0,
  "chapter_id" bigint NULL REFERENCES "chapters" ("id") DEFERRABLE INITIALLY DEFERRED,
  "group_id" bigint NULL REFERENCES "groups" ("id") DEFERRABLE INITIALLY DEFERRED,
  "part_id" bigint NULL REFERENCES "parts" ("id") DEFERRABLE INITIALLY DEFERRED,
  "quarter_id" bigint NULL REFERENCES "quarters" ("id") DEFERRABLE INITIALLY DEFERRED
);

CREATE INDEX "pages_verse_count_c0e0d056" ON "pages" ("verse_count");
CREATE INDEX "pages_chapter_id_a917d251" ON "pages" ("chapter_id");
CREATE INDEX "pages_group_id_43ecf6a9" ON "pages" ("group_id");
CREATE INDEX "pages_part_id_a8f68ff7" ON "pages" ("part_id");
CREATE INDEX "pages_quarter_id_48c3ef2b" ON "pages" ("quarter_id");

--
-- Create model Verse (Al-Aayat)
--
DROP TABLE IF EXISTS "verses";

CREATE TABLE "verses" (
  "id" integer NOT NULL PRIMARY KEY AUTOINCREMENT,
  "number" smallint unsigned NOT NULL CHECK ("number" >= 0),
  "content" varchar(1024) NOT NULL,
  "chapter_id" bigint NOT NULL REFERENCES "chapters" ("id") DEFERRABLE INITIALLY DEFERRED,
  "group_id" bigint NULL REFERENCES "groups" ("id") DEFERRABLE INITIALLY DEFERRED,
  "page_id" bigint NULL REFERENCES "pages" ("id") DEFERRABLE INITIALLY DEFERRED,
  "part_id" bigint NULL REFERENCES "parts" ("id") DEFERRABLE INITIALLY DEFERRED,
  "quarter_id" bigint NULL REFERENCES "quarters" ("id") DEFERRABLE INITIALLY DEFERRED
);

CREATE UNIQUE INDEX "verses_chapter_id_number_ca67eca3_uniq" ON "verses" ("chapter_id", "number");
CREATE INDEX "verses_number_3a23b3b1" ON "verses" ("number");
CREATE INDEX "verses_content_16c09417" ON "verses" ("content");
CREATE INDEX "verses_chapter_id_b472115e" ON "verses" ("chapter_id");
CREATE INDEX "verses_group_id_bb09b36d" ON "verses" ("group_id");
CREATE INDEX "verses_page_id_932c96e6" ON "verses" ("page_id");
CREATE INDEX "verses_part_id_cdcfce14" ON "verses" ("part_id");
CREATE INDEX "verses_quarter_id_3a00848c" ON "verses" ("quarter_id");

COMMIT;