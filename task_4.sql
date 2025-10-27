-- Print the full description of the table 'books'
-- using information_schema.columns

SELECT COLUMN_NAME AS "Column Name",
       COLUMN_TYPE AS "Data Type",
       IS_NULLABLE AS "Nullable",
       COLUMN_KEY AS "Key",
       COLUMN_DEFAULT AS "Default",
       EXTRA AS "Extra"
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_SCHEMA = DATABASE()  -- current database passed as argument
  AND TABLE_NAME = 'books';
