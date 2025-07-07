# Flipkart Fashion Analytics Dashboard

This project demonstrates data cleaning, preparation, and interactive analytics for Flipkart Fashion Products using Python and Power BI.

---

## Project Overview

This repository includes:
- **Data cleaning** scripts and notebooks (Python)
- **Power BI dashboard** for interactive exploration
- **Custom Flipkart-inspired theme**
- **Documentation** for data fields and visualizations

---

## Dashboard Features

The dashboard presents:
- **Total product and brand counts**
- **Average original and selling prices**
- **Price range (min, max, avg) by sub-category**
- **Average discount % by sub-category**
- **Brand and seller analysis (counts, ratings)**
- **Stock availability breakdown**
- **Category and sub-category distributions**

![Dashboard Overview](images/powerbi_dashboard.png)

---

## Getting Started

### 1. Set Up Python Environment

Install dependencies:
```sh
pip install -r requirements.txt
```

### 2. Data Preparation

Clean the data using:
- Jupyter notebook: `notebook/data_cleaning.ipynb`
- Python script: `scripts/python/clean_data.py`

Cleaned CSV will be saved as:  
`data/processed/flipkart_fashion_products_cleaned.csv`

### 3. Power BI Dashboard

- Open `powerbi/Flipkart_Fashion_Analytics.pbix` in Power BI Desktop.
- The dashboard uses the cleaned CSV as a data source.

---

## Documentation

- [Data Dictionary](docs/data_dictionary.md)
- [Explanation of Visuals](docs/visuals_explained.md)

---

## License

This project is licensed under the MIT License.