import pytesseract
from PIL import Image

class ReceiptProcessor:
    def __init__(self, image_path):
        self.image_path = image_path

    def extract_data(self):
        try:
            image = Image.open(self.image_path)
            extracted_text = pytesseract.image_to_string(image)
            return extracted_text
        except Exception as e:
            print(f"Error processing image: {e}")
            return None
