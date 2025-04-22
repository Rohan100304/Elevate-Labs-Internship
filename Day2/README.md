
#  Internship Day 1

Welcome to Day 1 of my internship journey!  
In this notebook, I focused on cleaning a dataset containing Netflix titles to prepare it for further analysis.

## 🧹 Cleaning Process Overview

- **Loaded the Dataset**: Read the `netflix_titles.csv` file using pandas.
- **Checked for Missing Values**: Used `isna().sum()` to identify columns with null entries.
- **Handled Missing Data**:
  - Filled missing values in the `director` column with `'unknown'`.
  - Dropped rows with missing values in `date_added`, `rating`, and `duration` since they were few in number.
  - Filled missing values in `cast` and `country` columns using their mode (most frequent value).
- **Date Conversion**: Converted the `date_added` column to datetime format using `pd.to_datetime()` to enable date-based filtering and analysis.
- **Verified Cleanliness**: Rechecked null values to confirm successful cleaning.




