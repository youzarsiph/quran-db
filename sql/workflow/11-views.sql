DROP VIEW IF EXISTS "unaccent_chapters";

-- This table is for searching chapters without diacritics.
CREATE VIEW "unaccent_chapters" AS
SELECT *,
  REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE("name", 'ۜ', ''), 'ۥ', ''), 'ۦ', ''), 'ۚ', ''), 'ٍ', ''), 'ٌ', ''), 'ً', ''), 'ۢ', ''), '۟', ''), 'ۗ', ''), 'ۖ', ''), 'ۭ', ''), 'ۛ', ''), 'ٱ', 'ا'), 'ٰ', ''), 'ٓ', ''), 'ّ', ''), 'ْ', ''), 'ِ', ''), 'ُ', ''), 'َ', '') as "unaccent_name"
FROM "chapters";

DROP VIEW IF EXISTS "unaccent_verses";

-- This table is for searching verses without diacritics.
CREATE VIEW "unaccent_verses" AS
SELECT *,
  REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE("content", 'ۜ', ''), 'ۥ', ''), 'ۦ', ''), 'ۚ', ''), 'ٍ', ''), 'ٌ', ''), 'ً', ''), 'ۢ', ''), '۟', ''), 'ۗ', ''), 'ۖ', ''), 'ۭ', ''), 'ۛ', ''), 'ٱ', 'ا'), 'ٰ', ''), 'ٓ', ''), 'ّ', ''), 'ْ', ''), 'ِ', ''), 'ُ', ''), 'َ', '') as "unaccent_content"
FROM "verses";
