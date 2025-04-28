-- Complementary data
INSERT INTO "languages"("name", "code") VALUES ("العربيّة", "ar");
INSERT INTO "languages"("name", "code") VALUES ("English", "en");


INSERT INTO "collections"("type", "name", "language_id") VALUES (2, "التَّفسِيرُ المُيَسَّرُ", 1);
INSERT INTO "collections"("type", "name", "language_id") VALUES (0, "Translation", 2);
INSERT INTO "collections"("type", "name", "language_id") VALUES (1, "Transliteration", 2);
