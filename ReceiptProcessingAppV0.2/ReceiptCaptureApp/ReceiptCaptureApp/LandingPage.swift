import SwiftUI

struct LandingPage: View {
    var body: some View {
        VStack {
            Text("Welcome to Receipt Capture")
                .font(.largeTitle)
                .padding()
            
            Button(action: {
                // Navigate to Camera View
            }) {
                Text("Enter Receipt")
                    .font(.title)
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
        }
    }
}

struct LandingPage_Previews: PreviewProvider {
    static var previews: some View {
        LandingPage()
    }
}
