
# Frontend Documentation: Mobile Receipt Capture App

## Overview
This document outlines the frontend design and features for the mobile receipt capture app, built specifically for iOS devices (iPhone 15 Pro Max) using SwiftUI. The app focuses on a simple and streamlined workflow for capturing receipts and syncing them with a designated "Receipts" folder in iCloud.

---

## Features

### 1. Landing Page for Confirmation
- **Trigger**: Opens upon activation by the **Action Button** (lower button on the right side of the phone).
- **Purpose**: Prevent accidental actions and ensure intentional interaction.
- **Design**:
  - A single, prominent **"Enter Receipt"** button to confirm intent and proceed to the camera for receipt capture.
  - No additional features like receipt history or settings are included. These are reserved for the desktop app.

### 2. Camera Workflow
- **Activation**: Initiated by tapping the "Enter Receipt" button on the landing page.
- **Features**:
  - **Preview Mode**:
    - After capturing a photo, a preview is displayed.
    - Options:
      - **"Use the Photo"**: Saves the photo to the designated "Receipts" folder in iCloud.
      - **"Retake Photo"**: Allows immediate retake if the photo is unclear or junk.
  - Ensures only high-quality photos are saved.

### 3. Exit Workflow with Double-Tap
- **Trigger**: A **double-tap** on the **Action Button**.
- **Actions**:
  - Signals the app that receipt capturing is complete.
  - Automatically closes the camera and returns to the landing page.
  - Finalizes and syncs the "Receipts" folder with iCloud.

### 4. Post-Capture Handling
- **Storage**:
  - Captured receipt photos are saved in the "Receipts" folder in iCloud.
  - The folder will be accessed later by the desktop app for processing and data extraction.
