INSERT INTO "chapters" ("name", "type", "order", "verse_count") VALUES
  ("الفاتحة", 1, 5, 7),
  ("البقرة", 0, 87, 286),
  ("آل عمران", 0, 89, 200),
  ("النساء", 0, 92, 176),
  ("المائدة", 0, 112, 120),
  ("الأنعام", 1, 55, 165),
  ("الأعراف", 1, 39, 206),
  ("الأنفال", 0, 88, 75),
  ("التوبة", 0, 113, 129),
  ("يونس", 1, 51, 109),
  ("هود", 1, 52, 123),
  ("يوسف", 1, 53, 111),
  ("الرعد", 0, 96, 43),
  ("ابراهيم", 1, 72, 52),
  ("الحجر", 1, 54, 99),
  ("النحل", 1, 70, 128),
  ("الإسراء", 1, 50, 111),
  ("الكهف", 1, 69, 110),
  ("مريم", 1, 44, 98),
  ("طه", 1, 45, 135),
  ("الأنبياء", 1, 73, 112),
  ("الحج", 0, 103, 78),
  ("المؤمنون", 1, 74, 118),
  ("النور", 0, 102, 64),
  ("الفرقان", 1, 42, 77),
  ("الشعراء", 1, 47, 227),
  ("النمل", 1, 48, 93),
  ("القصص", 1, 49, 88),
  ("العنكبوت", 1, 85, 69),
  ("الروم", 1, 84, 60),
  ("لقمان", 1, 57, 34),
  ("السجدة", 1, 75, 30),
  ("الأحزاب", 0, 90, 73),
  ("سبإ", 1, 58, 54),
  ("فاطر", 1, 43, 45),
  ("يس", 1, 41, 83),
  ("الصافات", 1, 56, 182),
  ("ص", 1, 38, 88),
  ("الزمر", 1, 59, 75),
  ("غافر", 1, 60, 85),
  ("فصلت", 1, 61, 54),
  ("الشورى", 1, 62, 53),
  ("الزخرف", 1, 63, 89),
  ("الدخان", 1, 64, 59),
  ("الجاثية", 1, 65, 37),
  ("الأحقاف", 1, 66, 35),
  ("محمد", 0, 95, 38),
  ("الفتح", 0, 111, 29),
  ("الحجرات", 0, 106, 18),
  ("ق", 1, 34, 45),
  ("الذاريات", 1, 67, 60),
  ("الطور", 1, 76, 49),
  ("النجم", 1, 23, 62),
  ("القمر", 1, 37, 55),
  ("الرحمن", 0, 97, 78),
  ("الواقعة", 1, 46, 96),
  ("الحديد", 0, 94, 29),
  ("المجادلة", 0, 105, 22),
  ("الحشر", 0, 101, 24),
  ("الممتحنة", 0, 91, 13),
  ("الصف", 0, 109, 14),
  ("الجمعة", 0, 110, 11),
  ("المنافقون", 0, 104, 11),
  ("التغابن", 0, 108, 18),
  ("الطلاق", 0, 99, 12),
  ("التحريم", 0, 107, 12),
  ("الملك", 1, 77, 30),
  ("القلم", 1, 2, 52),
  ("الحاقة", 1, 78, 52),
  ("المعارج", 1, 79, 44),
  ("نوح", 1, 71, 28),
  ("الجن", 1, 40, 28),
  ("المزمل", 1, 3, 20),
  ("المدثر", 1, 4, 56),
  ("القيامة", 1, 31, 40),
  ("الانسان", 0, 98, 31),
  ("المرسلات", 1, 33, 50),
  ("النبإ", 1, 80, 40),
  ("النازعات", 1, 81, 46),
  ("عبس", 1, 24, 42),
  ("التكوير", 1, 7, 29),
  ("الإنفطار", 1, 82, 19),
  ("المطففين", 1, 86, 36),
  ("الإنشقاق", 1, 83, 25),
  ("البروج", 1, 27, 22),
  ("الطارق", 1, 36, 17),
  ("الأعلى", 1, 8, 19),
  ("الغاشية", 1, 68, 26),
  ("الفجر", 1, 10, 30),
  ("البلد", 1, 35, 20),
  ("الشمس", 1, 26, 15),
  ("الليل", 1, 9, 21),
  ("الضحى", 1, 11, 11),
  ("الشرح", 1, 12, 8),
  ("التين", 1, 28, 8),
  ("العلق", 1, 1, 19),
  ("القدر", 1, 25, 5),
  ("البينة", 0, 100, 8),
  ("الزلزلة", 0, 93, 8),
  ("العاديات", 1, 14, 11),
  ("القارعة", 1, 30, 11),
  ("التكاثر", 1, 16, 8),
  ("العصر", 1, 13, 3),
  ("الهمزة", 1, 32, 9),
  ("الفيل", 1, 19, 5),
  ("قريش", 1, 29, 4),
  ("الماعون", 1, 17, 7),
  ("الكوثر", 1, 15, 3),
  ("الكافرون", 1, 18, 6),
  ("النصر", 0, 114, 3),
  ("المسد", 1, 6, 5),
  ("الإخلاص", 1, 22, 4),
  ("الفلق", 1, 20, 5),
  ("الناس", 1, 21, 6);

UPDATE "chapters" SET "name" = "ٱلْفَاتِحَةِ" WHERE "id" = 1;
UPDATE "chapters" SET "name" = "ٱلْبَقَرَةِ" WHERE "id" = 2;
UPDATE "chapters" SET "name" = "ءَالِ عِمْرَٰنَ" WHERE "id" = 3;
UPDATE "chapters" SET "name" = "ٱلنِّسَآءِ" WHERE "id" = 4;
UPDATE "chapters" SET "name" = "ٱلْمَآئِدَةِ" WHERE "id" = 5;
UPDATE "chapters" SET "name" = "ٱلْأَنْعَـٰمِ" WHERE "id" = 6;
UPDATE "chapters" SET "name" = "ٱلْأَعْرَافِ" WHERE "id" = 7;
UPDATE "chapters" SET "name" = "ٱلْأَنفَالِ" WHERE "id" = 8;
UPDATE "chapters" SET "name" = "ٱلتَّوْبَةِ" WHERE "id" = 9;
UPDATE "chapters" SET "name" = "يُونُسَ" WHERE "id" = 10;
UPDATE "chapters" SET "name" = "هُودٍ" WHERE "id" = 11;
UPDATE "chapters" SET "name" = "يُوسُفَ" WHERE "id" = 12;
UPDATE "chapters" SET "name" = "ٱلرَّعْدِ" WHERE "id" = 13;
UPDATE "chapters" SET "name" = "إِبْرَٰهِيمَ" WHERE "id" = 14;
UPDATE "chapters" SET "name" = "ٱلْحِجْرِ" WHERE "id" = 15;
UPDATE "chapters" SET "name" = "ٱلنَّحْلِ" WHERE "id" = 16;
UPDATE "chapters" SET "name" = "ٱلْإِسْرَاءِ" WHERE "id" = 17;
UPDATE "chapters" SET "name" = "ٱلْكَهْفِ" WHERE "id" = 18;
UPDATE "chapters" SET "name" = "مَرْيَمَ" WHERE "id" = 19;
UPDATE "chapters" SET "name" = "طه" WHERE "id" = 20;
UPDATE "chapters" SET "name" = "ٱلْأَنۢبِيَآءِ" WHERE "id" = 21;
UPDATE "chapters" SET "name" = "ٱلْحَجِّ" WHERE "id" = 22;
UPDATE "chapters" SET "name" = "ٱلْمُؤْمِنُونَ" WHERE "id" = 23;
UPDATE "chapters" SET "name" = "ٱلنُّورِ" WHERE "id" = 24;
UPDATE "chapters" SET "name" = "ٱلْفُرْقَانِ" WHERE "id" = 25;
UPDATE "chapters" SET "name" = "ٱلشُّعَرَآءِ" WHERE "id" = 26;
UPDATE "chapters" SET "name" = "ٱلنَّمْلِ" WHERE "id" = 27;
UPDATE "chapters" SET "name" = "ٱلْقَصَصِ" WHERE "id" = 28;
UPDATE "chapters" SET "name" = "ٱلْعَنكَبُوتِ" WHERE "id" = 29;
UPDATE "chapters" SET "name" = "ٱلرُّومِ" WHERE "id" = 30;
UPDATE "chapters" SET "name" = "لُقْمَـٰنَ" WHERE "id" = 31;
UPDATE "chapters" SET "name" = "ٱلسَّجْدَةِ" WHERE "id" = 32;
UPDATE "chapters" SET "name" = "ٱلْأَحْزَابِ" WHERE "id" = 33;
UPDATE "chapters" SET "name" = "سَبَإٍ" WHERE "id" = 34;
UPDATE "chapters" SET "name" = "فَاطِرٍ" WHERE "id" = 35;
UPDATE "chapters" SET "name" = "يسٓ" WHERE "id" = 36;
UPDATE "chapters" SET "name" = "ٱلصَّـٰٓفَّـٰتِ" WHERE "id" = 37;
UPDATE "chapters" SET "name" = "صٓ" WHERE "id" = 38;
UPDATE "chapters" SET "name" = "ٱلزُّمَرِ" WHERE "id" = 39;
UPDATE "chapters" SET "name" = "غَافِرٍ" WHERE "id" = 40;
UPDATE "chapters" SET "name" = "فُصِّلَتْ" WHERE "id" = 41;
UPDATE "chapters" SET "name" = "ٱلشُّورَىٰ" WHERE "id" = 42;
UPDATE "chapters" SET "name" = "ٱلزُّخْرُفِ" WHERE "id" = 43;
UPDATE "chapters" SET "name" = "ٱلدُّخَانِ" WHERE "id" = 44;
UPDATE "chapters" SET "name" = "ٱلْجَاثِيَةِ" WHERE "id" = 45;
UPDATE "chapters" SET "name" = "ٱلْأَحْقَافِ" WHERE "id" = 46;
UPDATE "chapters" SET "name" = "مُحَمَّدٍ" WHERE "id" = 47;
UPDATE "chapters" SET "name" = "ٱلْفَتْحِ" WHERE "id" = 48;
UPDATE "chapters" SET "name" = "ٱلْحُجُرَٰتِ" WHERE "id" = 49;
UPDATE "chapters" SET "name" = "قٓ" WHERE "id" = 50;
UPDATE "chapters" SET "name" = "ٱلذَّٰرِيَـٰتِ" WHERE "id" = 51;
UPDATE "chapters" SET "name" = "ٱلطُّورِ" WHERE "id" = 52;
UPDATE "chapters" SET "name" = "ٱلنَّجْمِ" WHERE "id" = 53;
UPDATE "chapters" SET "name" = "ٱلْقَمَرِ" WHERE "id" = 54;
UPDATE "chapters" SET "name" = "ٱلرَّحْمَـٰنِ" WHERE "id" = 55;
UPDATE "chapters" SET "name" = "ٱلْوَاقِعَةِ" WHERE "id" = 56;
UPDATE "chapters" SET "name" = "ٱلْحَدِيدِ" WHERE "id" = 57;
UPDATE "chapters" SET "name" = "ٱلْمُجَادِلَةِ" WHERE "id" = 58;
UPDATE "chapters" SET "name" = "ٱلْحَشْرِ" WHERE "id" = 59;
UPDATE "chapters" SET "name" = "ٱلْمُمْتَحَنَةِ" WHERE "id" = 60;
UPDATE "chapters" SET "name" = "ٱلصَّفِّ" WHERE "id" = 61;
UPDATE "chapters" SET "name" = "ٱلْجُمُعَةِ" WHERE "id" = 62;
UPDATE "chapters" SET "name" = "ٱلْمُنَـٰفِقُونَ" WHERE "id" = 63;
UPDATE "chapters" SET "name" = "ٱلتَّغَابُنِ" WHERE "id" = 64;
UPDATE "chapters" SET "name" = "ٱلطَّلَـٰقَ" WHERE "id" = 65;
UPDATE "chapters" SET "name" = "ٱلتَّحْرِيمِ" WHERE "id" = 66;
UPDATE "chapters" SET "name" = "ٱلْمُلْكِ" WHERE "id" = 67;
UPDATE "chapters" SET "name" = "ٱلْقَلَمِ" WHERE "id" = 68;
UPDATE "chapters" SET "name" = "ٱلْحَآقَّةِ" WHERE "id" = 69;
UPDATE "chapters" SET "name" = "ٱلْمَعَارِجِ" WHERE "id" = 70;
UPDATE "chapters" SET "name" = "نُوحٍ" WHERE "id" = 71;
UPDATE "chapters" SET "name" = "ٱلْجِنِّ" WHERE "id" = 72;
UPDATE "chapters" SET "name" = "ٱلْمُزَّمِّلِ" WHERE "id" = 73;
UPDATE "chapters" SET "name" = "ٱلْمُدَّثِّرِ" WHERE "id" = 74;
UPDATE "chapters" SET "name" = "ٱلْقِيَـٰمَةِ" WHERE "id" = 75;
UPDATE "chapters" SET "name" = "ٱلْإِنسَـٰنِ" WHERE "id" = 76;
UPDATE "chapters" SET "name" = "ٱلْمُرْسَلَـٰتِ" WHERE "id" = 77;
UPDATE "chapters" SET "name" = "ٱلنَّبَإِ" WHERE "id" = 78;
UPDATE "chapters" SET "name" = "ٱلنَّـٰزِعَـٰتِ" WHERE "id" = 79;
UPDATE "chapters" SET "name" = "عَبَسَ" WHERE "id" = 80;
UPDATE "chapters" SET "name" = "ٱلتَّكْوِيرِ" WHERE "id" = 81;
UPDATE "chapters" SET "name" = "ٱلْانْفِطَارِ" WHERE "id" = 82;
UPDATE "chapters" SET "name" = "ٱلْمُطَفِّفِينَ" WHERE "id" = 83;
UPDATE "chapters" SET "name" = "ٱلْانْشِقَاقِ" WHERE "id" = 84;
UPDATE "chapters" SET "name" = "ٱلْبُرُوجِ" WHERE "id" = 85;
UPDATE "chapters" SET "name" = "ٱلطَّارِقِ" WHERE "id" = 86;
UPDATE "chapters" SET "name" = "ٱلْأَعْلَى" WHERE "id" = 87;
UPDATE "chapters" SET "name" = "ٱلْغَـٰشِيَةِ" WHERE "id" = 88;
UPDATE "chapters" SET "name" = "ٱلْفَجْرِ" WHERE "id" = 89;
UPDATE "chapters" SET "name" = "ٱلْبَلَدِ" WHERE "id" = 90;
UPDATE "chapters" SET "name" = "ٱلشَّمْسِ" WHERE "id" = 91;
UPDATE "chapters" SET "name" = "ٱلَّيْلِ" WHERE "id" = 92;
UPDATE "chapters" SET "name" = "ٱلضُّحَىٰ" WHERE "id" = 93;
UPDATE "chapters" SET "name" = "ٱلشَّرْحِ" WHERE "id" = 94;
UPDATE "chapters" SET "name" = "ٱلتِّينِ" WHERE "id" = 95;
UPDATE "chapters" SET "name" = "ٱلْعَلَقِ" WHERE "id" = 96;
UPDATE "chapters" SET "name" = "ٱلْقَدْرِ" WHERE "id" = 97;
UPDATE "chapters" SET "name" = "ٱلْبَيِّنَةِ" WHERE "id" = 98;
UPDATE "chapters" SET "name" = "ٱلزَّلْزَلَةِ" WHERE "id" = 99;
UPDATE "chapters" SET "name" = "ٱلْعَـٰدِيَـٰتِ" WHERE "id" = 100;
UPDATE "chapters" SET "name" = "ٱلْقَارِعَةِ" WHERE "id" = 101;
UPDATE "chapters" SET "name" = "ٱلتَّكَاثُرِ" WHERE "id" = 102;
UPDATE "chapters" SET "name" = "ٱلْعَصْرِ" WHERE "id" = 103;
UPDATE "chapters" SET "name" = "ٱلْهُمَزَةِ" WHERE "id" = 104;
UPDATE "chapters" SET "name" = "ٱلْفِيلِ" WHERE "id" = 105;
UPDATE "chapters" SET "name" = "قُرَيْشٍ" WHERE "id" = 106;
UPDATE "chapters" SET "name" = "ٱلْمَاعُونِ" WHERE "id" = 107;
UPDATE "chapters" SET "name" = "ٱلْكَوْثَرِ" WHERE "id" = 108;
UPDATE "chapters" SET "name" = "ٱلْكَـٰفِرُونَ" WHERE "id" = 109;
UPDATE "chapters" SET "name" = "ٱلنَّصْرِ" WHERE "id" = 110;
UPDATE "chapters" SET "name" = "ٱلْمَسَدِ" WHERE "id" = 111;
UPDATE "chapters" SET "name" = "ٱلْإِخْلَاصِ" WHERE "id" = 112;
UPDATE "chapters" SET "name" = "ٱلْفَلَقِ" WHERE "id" = 113;
UPDATE "chapters" SET "name" = "ٱلنَّاسِ" WHERE "id" = 114;
