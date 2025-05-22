
# Frontend Documentation: Desktop Receipt Processing App

## Overview
This document outlines the design and functionality of the desktop app for processing receipt data. The app will access the synced "Receipts" folder from iCloud, extract key information, and store it in an SQLite database. The app will feature a modern, user-friendly interface that provides clear updates on the processing progress and supports data export, categorization, and search.

---

## Features

### 1. User Interface
- **Startup Process**:
  - Automatically locates the "Receipts" folder on iCloud.
  - Displays progress updates to the user as receipt files are processed.
- **Dashboard**:
  - Visual, modern design with colorful and intuitive layouts.
  - Displays:
    - Progress updates during the extraction process.
    - Summary of processed receipts, including:
      - Date of receipt.
      - Merchant name.
      - Item details.
      - Total cost.
      - Tax paid.
      - Payment method.
    - Receipt preview for validation.
  - Includes access to the app database for viewing, searching, and editing records.
