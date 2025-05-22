# Receipt Processing Application

## Overview
The Receipt Processing Application is a two-part system designed to streamline receipt management. It consists of:

1. **Mobile Receipt Capture App** (iOS):
   - Captures receipt photos using the iPhone's camera.
   - Syncs captured receipts to an iCloud folder.

2. **Desktop Receipt Processing App** (macOS):
   - Processes synced receipt images from iCloud.
   - Extracts key information (e.g., merchant, date, total) using OCR.
   - Saves processed data into a local SQLite database.
   - Provides options for data validation, exporting to CSV, and archiving receipts.

---

## Features

### **Mobile Receipt Capture App**
- SwiftUI-based user interface.
- Seamless iCloud sync for storing captured receipts.
- Simple workflows:
  - Landing page confirmation to prevent accidental actions.
  - Camera view with preview and retake functionality.
  - Double-tap exit for quick session closure.

### **Desktop Receipt Processing App**
- Python-based application with PyQt5 for the user interface.
- Key functionalities:
  - Receipt image processing using Tesseract OCR.
  - Data validation and SQLite storage.
  - CSV export with filtering options.
  - Archiving processed receipts with timestamped folders.

---

## Directory Structure
```
ReceiptProcessingAppV0.2/
├── DesktopReceiptProcessingApp/
│   ├── app/
│   │   ├── main.py
│   │   ├── receipt_processor.py
│   ├── assets/                      # Static assets (e.g., icons)
│   ├── tests/                       # Unit and integration tests
├── MobileReceiptCaptureApp/
│   ├── App/                         # Core Swift files
│   │   ├── CameraView.swift
│   │   ├── LandingPage.swift
│   ├── Assets/                      # Images and icons
│   ├── Tests/                       # Unit/UI tests
├── docs/                            # Documentation folder
│   ├── receipt_processing_documentsv0.2.pdf
├── README.md                        # Project overview
```

---

## Installation

### **Mobile App**
1. Open the project in Xcode.
2. Connect your iPhone and select the appropriate device.
3. Build and run the app to deploy it to your iPhone.

### **Desktop App**
1. Install Python 3.9 or later.
2. Install required dependencies:
   ```bash
   pip install pyqt5 pytesseract pillow sqlite3 pandas
   ```
3. Ensure Tesseract OCR is installed:
   ```bash
   brew install tesseract
   ```
4. Run the desktop app:
   ```bash
   python main.py
   ```

---

## Usage

### **Mobile App**
1. Open the app and confirm intent to capture receipts.
2. Use the camera to take receipt photos.
3. Sync photos to iCloud for desktop processing.

### **Desktop App**
1. Launch the app and sync with the iCloud folder.
2. Process receipts one by one, validating extracted data.
3. Export processed data to CSV or archive completed receipts.

---

## Testing
- Automated tests for critical functions using `pytest`.
- Manual exploratory tests for edge cases, such as incomplete or noisy receipts.

---

## Future Enhancements
- Add basic analytics (e.g., monthly spending summaries).
- Improve OCR accuracy with AI-based models.
- Expand mobile app functionality to allow data categorization.

---

## License
This project is licensed under the MIT License. See the LICENSE file for details.
