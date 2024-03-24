import SwiftUI


struct ContentView: View {
    @State private var username: String = ""
    @State private var password: String = ""
    var body: some View {
        // State variables to hold the user's input
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor) // Changed to `foregroundColor` for clarity
            Text("Hello, world!")
            
            Form {
                TextField("Username", text: $username)
                                    .autocapitalization(.none) // Optional: Prevent automatic capitalization
                                    .disableAutocorrection(true) // Optional: Disable autocorrection
                                // Password field
                                SecureField("Password", text: $password)
            }
            
            Button("Login") {
                // Action to perform when the button is tapped
                print("Login button was tapped")
            }
            .frame(maxWidth: .infinity, maxHeight: 60) // Makes the button's width fill the available space
            .padding(.horizontal) // Adds horizontal padding, reducing the actual width slightly from the screen's edge
            .background(Color.blue) // Sets the background color of the button
            .foregroundColor(.white) // Sets the text color
            .font(.headline) // Changes the font of the button's label
            .cornerRadius(10) // Applies rounded corners to the button
            .padding(0) // Adds padding around the button to ensure it doesn't touch the edges of the screen
        }
        .padding()
    }
}

// Preview provider code should be outside of your ContentView struct
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
