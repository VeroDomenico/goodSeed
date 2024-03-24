import SwiftUI

struct LoginView: View {
    @State private var username: String = ""
    @State private var password: String = ""

    var body: some View {
        ZStack {
            // Background color

            
            // Content
            VStack(spacing: 20) {
                Image("logo")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 150, height: 150)
                    .padding(.bottom, 50) // Adds some space below the logo
                
                Text("Good Seed")
                    .font(.largeTitle) // Makes the text larger and more prominent
                    .foregroundColor(.white)
                    .padding(.bottom, 20) // Adds some space below the text
                
                // Username TextField
                TextField("Username", text: $username)
                    .padding()
                    .background(Color.gray.opacity(0.3))
                    .cornerRadius(10.0)
                    .foregroundColor(.white)
                    .padding(.horizontal, 20)
                
                // Password SecureField
                SecureField("Password", text: $password)
                    .padding()
                    .background(Color.gray.opacity(0.3))
                    .cornerRadius(10.0)
                    .foregroundColor(.white)
                    .padding(.horizontal, 20)
                
                Button(action: login) {
                    Text("Login")
                        .font(.headline)
                        .foregroundColor(.black)
                        .padding()
                        .frame(width: 220, height: 50)
                        .background(Color.white)
                        .cornerRadius(25.0)
                }
                .shadow(radius: 10)
                .padding(.top, 30)
            }
        }
    }
    
    func login() {
        // Implement your login logic here
        print("Username: \(username), Password: \(password)")
        //Control logic Here
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
