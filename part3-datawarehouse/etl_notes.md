## ETL Decisions

### Decision 1 — Date Standardization
Problem: The raw dataset contained inconsistent date formats (e.g., DD-MM-YYYY, MM/DD/YYYY).
Resolution: All dates were converted into a standard YYYY-MM-DD format to ensure consistency in analysis and joins.

### Decision 2 — Handling NULL Values
Problem: Some records had missing values in important fields like category and revenue.
Resolution: Missing categorical values were filled using default categories, and missing numerical values were replaced with 0 where appropriate.

### Decision 3 — Category Normalization
Problem: Product categories had inconsistent naming (e.g., "electronics", "Electronics", "ELECTRONICS").
Resolution: All category values were standardized into a consistent format to avoid duplication in aggregation results.