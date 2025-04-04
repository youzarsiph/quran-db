# Query examples

More usage examples.

## Pages of an item

Get all pages of a chapter, part etc...:

```sql
SELECT DISTINCT
  "pages"."id",
  "pages"."chapter_id",
  "pages"."part_id",
  "pages"."group_id",
  "pages"."quarter_id",
  "pages"."name",
  "pages"."verse_count"
FROM "pages"
  INNER JOIN "verses" ON ("pages"."id" = "verses"."page_id")
WHERE "verses"."chapter_id" = 1;
```

## Get items with 1st verse

Get all parts, groups etc.., with 50 chars of 1st verse in that item:

```sql
SELECT
  "parts"."id",
  "parts"."name",
  "verses"."chapter_id" as "verse_c_id",
  "verses"."number" as "verse_number",
  substr("verses"."content", 0, 50) as "verse_content"
FROM "parts"
  INNER JOIN "verses" ON ("parts"."id" = "verses"."part_id")
GROUP BY "verses"."part_id";
```

## Pages with verses

Select all pages of a chapter, part etc..., with all verses of each page:

```sql
SELECT
  "pages"."id",
  "pages"."chapter_id",
  "pages"."part_id",
  "pages"."group_id",
  "pages"."quarter_id",
  "pages"."name",
  "pages"."verse_count",
  "verses"."id" as "verse_id",
  "verses"."chapter_id" as "verse_c_id",
  "verses"."page_id" as "verse_p_id",
  "verses"."number" as "verse_number",
  "verses"."content" as "verse_content"
FROM "pages"
  INNER JOIN "verses" ON ("pages"."id" = "verses"."page_id")
WHERE "verses"."chapter_id" = 1;
```

**Note**: You need to extract pages and verses data from the results of this query.

Here is how you do it in Python:

```python
"""An example that demonstrates how extract pages and verses from query results"""

import json
import sqlite3
from typing import Dict, List, Union


# Connect to the db
connection = sqlite3.connect("quran-db.sqlite3")
cursor = connection.cursor()

statement = """
SELECT
  "pages"."id",
  "pages"."chapter_id",
  "pages"."part_id",
  "pages"."group_id",
  "pages"."quarter_id",
  "pages"."name",
  "pages"."verse_count",
  "verses"."id" as "verse_id",
  "verses"."chapter_id" as "verse_c_id",
  "verses"."page_id" as "verse_p_id",
  "verses"."number" as "verse_number",
  "verses"."content" as "verse_content"
FROM "pages"
  INNER JOIN "verses" ON ("pages"."id" = "verses"."page_id")
WHERE "verses"."chapter_id" = ?;
"""

# Field mapping by index
FIELD_MAP = {
    "page": [
        "id",
        "chapter_id",
        "part_id",
        "group_id",
        "quarter_id",
        "name",
        "verse_count",
    ],
    "verse": [
        "id",
        "chapter_id",
        "page_id",
        "number",
        "content",
    ],
}

pages: List[Dict[str, Union[int, str]]] = []
verses: List[Dict[str, Union[int, str]]] = []

for row in cursor.execute(statement, (12,)):
    page = {FIELD_MAP["page"][i]: c for i, c in enumerate(row[:6])}

    if page not in pages:
        pages.append(page)

    verse = {FIELD_MAP["verse"][i]: c for i, c in enumerate(row[7:])}

    if verse not in verses:
        verses.append(verse)

# Now, you have extracted pages and verses, how to get verses of a page?
pages = [
    {**page, "verses": list(filter(lambda v: v["page_id"] == page["id"], verses))}
    for page in pages
]


# Save the pages as a json file, so you can check it easily.
with open("pages.json", "w", encoding="utf-8") as file:
    json.dump(pages, file, ensure_ascii=False, indent=2)

# Close the connection
connection.close()

```
