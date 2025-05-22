
# Database Schema: Desktop Receipt Processing App

## Overview
The database schema is designed to store receipt data extracted from images and link it to the original receipt photos. The schema ensures efficient categorization, search, and retrieval of financial data, supporting both business and personal expense management.

---

## Tables

### 1. Receipts
Stores metadata and key information about each receipt.

| Column Name       | Data Type | Constraints         | Description                                 |
|-------------------|-----------|---------------------|---------------------------------------------|
| `id`              | INTEGER   | PRIMARY KEY         | Unique identifier for the receipt record.   |
| `photo_path`      | TEXT      | NOT NULL            | Path to the receipt image.                 |
| `date`            | DATE      | NOT NULL            | Date of the receipt.                       |
| `merchant`        | TEXT      | NOT NULL            | Name of the merchant.                      |
| `total`           | REAL      | NOT NULL            | Total amount on the receipt.               |
| `tax`             | REAL      | DEFAULT 0.0         | Tax amount on the receipt.                 |
| `payment_method`  | TEXT      | NOT NULL            | Payment method (e.g., cash, card).         |
| `category`        | TEXT      | DEFAULT 'personal'  | Expense category (business or personal).   |
