# Quran-DB

[![CD](https://github.com/youzarsiph/quran-db/actions/workflows/cd.yml/badge.svg)](https://github.com/youzarsiph/quran-db/actions/workflows/cd.yml)

## Overview

**Quran-DB** is a sophisticated and comprehensive database of the Quran, available in both SQLite3 and JSON formats. Designed for optimal data organization and retrieval, it provides robust and efficient access to Quranic content and metadata. The database is meticulously structured to support various applications, including scholarly research, educational tools, and digital Quranic resources. The data in this repo is generated using [`quran-cli`](https://github.com/youzarsiph/quran-cli), you can use it to generate your own version.

## Features

- **Multiple Formats:** Available in SQLite3 for relational database operations and JSON for easy data manipulation and sharing.
- **Comprehensive Data Organization:** Divides the Quran into chapters, parts, groups, quarters, and pages, with detailed metadata.
- **Efficient Querying:** Utilizes indexing and views for fast data retrieval and analysis.
- **Data Integrity:** Ensures accurate and consistent Quranic data through well-defined schemas and relationships.
- **Diacritics:** Now chapter names include Arabic diacritics.

## Formats

Quran-DB is available in the following formats:

- **SQLite3:** Fully integrated SQLite3 database.
- **JSON:** Precisely structured JSON files.

## Installation

### Prerequisites

- **SQLite3:** Required for reading and manipulating the SQLite3 database.
- **JSON Parser:** Required for handling JSON files (available in most programming languages).

### Steps

1. **Download the Database:**

   - Clone the repository or download the database files from repository.

2. **Set Up SQLite3 Database:**

   - Use the `quran-db.sqlite3` file provided in the repository.
   - Import the database using SQLite3 tools:

     ```bash
     sqlite3 quran-db.sqlite3
     ```

3. **Use JSON Files:**
   - Locate the JSON files in the `json` directory.
   - Use a JSON parser in your preferred programming language to read and manipulate the data.

## Database Schema Documentation

### Tables

#### 1. **Chapters (As-Suwar)**

**Description:**  
Contains detailed information about each chapter (Surah) in the Quran.

**Columns:**

- `id`: Unique identifier for each chapter (Primary Key).
- `name`: Name of the chapter.
- `order`: Chronological order of the chapter within the Quran.
- `type`: Type of chapter (Meccan or Medinan, using boolean value).
- `verse_count`: Total number of verses in the chapter.
- `page_count`: Total number of pages occupied by the chapter.

**Indexes:**

- `chapters_verse_count_5777cda7`: Index on `verse_count`.
- `chapters_page_count_7f097df8`: Index on `page_count`.

#### 2. **Parts (Al-Ajzaa)**

**Description:**  
Represents the major divisions (Juz') of the Quran.

**Columns:**

- `id`: Unique identifier for each part (Primary Key).
- `name`: Name of the part.
- `verse_count`: Total number of verses in the part.
- `page_count`: Total number of pages occupied by the part.

**Indexes:**

- `parts_verse_count_9501296e`: Index on `verse_count`.
- `parts_page_count_606da20b`: Index on `page_count`.

#### 3. **Groups (Al-Ahzab)**

**Description:**  
Delineates intermediate divisions within parts of the Quran.

**Columns:**

- `id`: Unique identifier for each group (Primary Key).
- `name`: Name of the group.
- `verse_count`: Total number of verses in the group.
- `page_count`: Total number of pages occupied by the group.
- `part_id`: Foreign key referencing the parent part (`parts.id`).

**Indexes:**

- `groups_verse_count_cbf9c194`: Index on `verse_count`.
- `groups_page_count_1e918a07`: Index on `page_count`.
- `groups_part_id_5cc7ea42`: Index on `part_id`.

#### 4. **Quarters (Al-Arbaa)**

**Description:**  
Subdivides groups into smaller, more granular units.

**Columns:**

- `id`: Unique identifier for each quarter (Primary Key).
- `name`: Name of the quarter.
- `verse_count`: Total number of verses in the quarter.
- `page_count`: Total number of pages occupied by the quarter.
- `group_id`: Foreign key referencing the parent group (`groups.id`).
- `part_id`: Foreign key referencing the parent part (`parts.id`).

**Indexes:**

- `quarters_verse_count_3da85c21`: Index on `verse_count`.
- `quarters_page_count_ac1d8f5e`: Index on `page_count`.
- `quarters_group_id_425bbd82`: Index on `group_id`.
- `quarters_part_id_ffd45a90`: Index on `part_id`.

#### 5. **Pages (As-Safahat)**

**Description:**  
Stores information about each page in the Quran.

**Columns:**

- `id`: Unique identifier for each page (Primary Key).
- `name`: Name or identifier of the page.
- `verse_count`: Total number of verses on the page.
- `chapter_id`: Foreign key referencing the associated chapter (`chapters.id`).
- `group_id`: Foreign key referencing the associated group (`groups.id`).
- `part_id`: Foreign key referencing the associated part (`parts.id`).
- `quarter_id`: Foreign key referencing the associated quarter (`quarters.id`).

**Indexes:**

- `pages_verse_count_c0e0d056`: Index on `verse_count`.
- `pages_chapter_id_a917d251`: Index on `chapter_id`.
- `pages_group_id_43ecf6a9`: Index on `group_id`.
- `pages_part_id_a8f68ff7`: Index on `part_id`.
- `pages_quarter_id_48c3ef2b`: Index on `quarter_id`.

#### 6. **Verses (Al-Aayat)**

**Description:**  
Contains the text and metadata for each verse in the Quran.

**Columns:**

- `id`: Unique identifier for each verse (Primary Key).
- `number`: Numerical order of the verse within its chapter.
- `content`: Text content of the verse.
- `chapter_id`: Foreign key referencing the associated chapter (`chapters.id`).
- `group_id`: Foreign key referencing the associated group (`groups.id`).
- `page_id`: Foreign key referencing the associated page (`pages.id`).
- `part_id`: Foreign key referencing the associated part (`parts.id`).
- `quarter_id`: Foreign key referencing the associated quarter (`quarters.id`).

**Indexes:**

- `verses_chapter_id_number_ca67eca3_uniq`: Unique index on the combination of `chapter_id` and `number`.
- `verses_number_3a23b3b1`: Index on `number`.
- `verses_content_16c09417`: Index on `content`.
- `verses_chapter_id_b472115e`: Index on `chapter_id`.
- `verses_group_id_bb09b36d`: Index on `group_id`.
- `verses_page_id_932c96e6`: Index on `page_id`.
- `verses_part_id_cdcfce14`: Index on `part_id`.
- `verses_quarter_id_3a00848c`: Index on `quarter_id`.

### Views

#### **unaccent_verses**

**Description:**  
Provides a unified and comprehensive view to search the verses.

**Columns:**

The columns of this view are columns of `verses` tables but `content` column is without diacritics.

## Usage

### Querying the Database

#### **Example SQL Queries:**

- **Retrieve all verses from chapter 1:**

  ```sql
  SELECT * FROM verses WHERE chapter_id = 1;
  ```

- **Retrieve all chapters of Meccan type:**

  ```sql
  SELECT * FROM chapters WHERE type = 1;
  ```

- **Retrieve the first 10 verses from the database:**

  ```sql
  SELECT * FROM verses ORDER BY chapter_id, number LIMIT 10;
  ```

For more examples you can check the [`sql/queries.md`](sql/queries.md).

### Example JSON Queries

- **Using Python:**

  ```python
  import json

  # Load JSON data from a file
  with open('json/verses.json') as f:
      verses = json.load(f)

  # Retrieve all verses from chapter 1
  chapter_1_verses = [verse for verse in verses if verse['chapter_id'] == 1]

  # Retrieve all chapters of Meccan type
  with open('json/chapters.json') as f:
      chapters = json.load(f)
  meccan_chapters = [chapter for chapter in chapters if chapter['type'] == 1]

  # Retrieve the first 10 verses
  first_10_verses = verses[:10]
  ```

- **Using JavaScript (Node.js):**

  ```javascript
  const fs = require("fs");

  // Load JSON data from a file
  const verses = JSON.parse(fs.readFileSync("json/verses.json", "utf8"));

  // Retrieve all verses from chapter 1
  const chapterOneVerses = verses.filter((verse) => verse.chapter_id === 1);

  // Retrieve all chapters of Meccan type
  const chapters = JSON.parse(fs.readFileSync("json/chapters.json", "utf8"));
  const meccanChapters = chapters.filter((chapter) => chapter.type === 1);

  // Retrieve the first 10 verses
  const firstTenVerses = verses.slice(0, 10);
  ```

## Contributing

We welcome contributions from the community to enhance the Quran-DB project. Please follow these guidelines when contributing:

### Code of Conduct

By participating in this project, you are expected to uphold our [Code of Conduct](CODE_OF_CONDUCT.md). Any unacceptable behavior will not be tolerated.

### Issues

Before submitting an issue, please check if a similar issue has already been reported. To submit a new issue, visit the [Issues page](https://github.com/youzarsiph/quran-db/issues) and provide detailed information about the problem, including steps to reproduce it.

### Pull Requests

1. **Fork the Repository:** Create a fork of the repository on GitHub.
2. **Create a Branch:** Check out a new branch for your feature or bug fix.

   ```bash
   git checkout -b feature/your-feature-name
   ```

3. **Make Changes:** Implement your changes and commit them.

   ```bash
   git commit -m "Add your feature or fix"
   ```

4. **Push Changes:** Push your changes to the forked repository.

   ```bash
   git push origin feature/your-feature-name
   ```

5. **Submit a Pull Request:** Open a pull request to the main repository, explaining the changes you made and why they should be merged.

## Community and Support

Join our community to get involved, ask questions, and share your experiences:

- **GitHub Discussions:** [Quran-DB GitHub Discussions](https://github.com/youzarsiph/quran-db/discussions)

## License

This project is licensed under the [MIT License](LICENSE). By contributing to this project, you agree to abide by its terms and conditions.

## Contact

For more information, please contact the maintainers:

- **Maintainer:** [Yousuf Abu Shanab](https://github.com/youzarsiph)
