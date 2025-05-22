import sys
from PyQt5.QtWidgets import QApplication, QMainWindow, QLabel, QVBoxLayout, QWidget, QPushButton, QFileDialog
from receipt_processor import ReceiptProcessor
import sqlite3

class ReceiptProcessingApp(QMainWindow):
    def __init__(self):
        super().__init__()
        self.setWindowTitle("Receipt Processing App")
        self.setGeometry(100, 100, 800, 600)
        
        self.initUI()
        self.initDatabase()

    def initUI(self):
        layout = QVBoxLayout()
        label = QLabel("Welcome to the Receipt Processing App")
        layout.addWidget(label)

        processButton = QPushButton("Process Receipt")
        processButton.clicked.connect(self.processReceipt)
        layout.addWidget(processButton)
        
        container = QWidget()
        container.setLayout(layout)
        self.setCentralWidget(container)

    def initDatabase(self):
        self.conn = sqlite3.connect('receipts.db')
        self.cursor = self.conn.cursor()
        self.cursor.execute('''
            CREATE TABLE IF NOT EXISTS receipts (
                id INTEGER PRIMARY KEY,
                image_path TEXT,
                extracted_data TEXT
            )
        ''')
        self.conn.commit()

    def processReceipt(self):
        options = QFileDialog.Options()
        fileName, _ = QFileDialog.getOpenFileName(self, "Select Receipt Image", "", "Images (*.png *.xpm *.jpg)", options=options)
        if fileName:
            processor = ReceiptProcessor(fileName)
            extracted_data = processor.extract_data()
            if extracted_data:
                self.cursor.execute('INSERT INTO receipts (image_path, extracted_data) VALUES (?, ?)', (fileName, extracted_data))
                self.conn.commit()
                print("Receipt processed and data saved.")
            else:
                print("Failed to extract data from receipt.")

        self.conn.close()

if __name__ == "__main__":
    app = QApplication(sys.argv)
    window = ReceiptProcessingApp()
    window.show()
    sys.exit(app.exec_())
