import SwiftUI

struct CameraView: View {
    @State private var inputImage: UIImage?
    @State private var isShowingImagePicker = false

    var body: some View {
        VStack {
            if let inputImage = inputImage {
                Image(uiImage: inputImage)
                    .resizable()
                    .scaledToFit()
                    .padding()
            } else {
                Text("No image selected")
                    .foregroundColor(.gray)
            }

            HStack {
                if inputImage != nil {
                    Button("Use the Photo") {
                        // Add your logic to save the photo to iCloud or process it
                        print("Photo saved or processed!")
                    }
                    .padding()
                    .background(Color.green)
                    .foregroundColor(.white)
                    .cornerRadius(10)

                    Button("Retake Photo") {
                        self.isShowingImagePicker = true
                    }
                    .padding()
                    .background(Color.red)
                    .foregroundColor(.white)
                    .cornerRadius(10)
                } else {
                    Button("Capture Receipt") {
                        self.isShowingImagePicker = true
                    }
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
                }
            }
        }
        .sheet(isPresented: $isShowingImagePicker, onDismiss: loadImage) {
            ImagePicker(image: self.$inputImage)
        }
    }

    func loadImage() {
        // Handle logic for loading the selected image
        guard let inputImage = inputImage else { return }
        print("Image loaded successfully: \(inputImage)")
    }
}

struct CameraView_Previews: PreviewProvider {
    static var previews: some View {
        CameraView()
    }
}

