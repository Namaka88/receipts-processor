import SwiftUI
import AVFoundation

struct CameraView: View {
    @State private var isShowingImagePicker = false
    @State private var inputImage: UIImage?
    
    var body: some View {
        VStack {
            if let inputImage = inputImage {
                Image(uiImage: inputImage)
                    .resizable()
                    .scaledToFit()
                
                HStack {
                    Button("Use the Photo") {
                        // Save photo to iCloud
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
                }
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
        .sheet(isPresented: $isShowingImagePicker, onDismiss: loadImage) {
            ImagePicker(image: self.$inputImage)
        }
    }
    
    func loadImage() {
        // Handle image loading
    }
}

struct CameraView_Previews: PreviewProvider {
    static var previews: some View {
        CameraView()
    }
}
