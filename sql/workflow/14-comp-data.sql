-- Complementary data
INSERT INTO "languages"("name", "code") VALUES ("العربيّة", "ar");
INSERT INTO "collections"("type", "name", "language_id") VALUES (2, "التَّفسِيرُ المُيَسَّرُ", 1);
INSERT INTO "items"("content", "collection_id", "verse_id") SELECT "content", 1, "id" FROM "quran";
