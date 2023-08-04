import SwiftUI
import AuthenticationServices

struct HomeView: View {
    
    @State private var username: String = ""
    @State private var password: String = ""
    
    var body: some View {
        VStack {
            Spacer()
            
            Image("zingLogo") // Replace "logo" with your actual logo image name
                .resizable()
                .scaledToFit()
                .frame(width: 200, height: 200)
            
            Spacer()
            
            VStack(spacing: 16) {
                TextField("Username", text: $username)
                    .padding()
                    .background(Color(.systemGray6))
                    .cornerRadius(8)
                
                SecureField("Password", text: $password)
                    .padding()
                    .background(Color(.systemGray6))
                    .cornerRadius(8)
            }
            .padding([.leading, .trailing], 27.5)
            
            Spacer()
            
            Button(action: {
                print("Login button tapped!")
                // Handle your login logic here
            }) {
                Text("Sign In")
                    .frame(minWidth: 0, maxWidth: .infinity)
                    .frame(height: 50)
                    .foregroundColor(.white)
                    .background(Color.gray)
                    .cornerRadius(10)
            }
            .padding([.leading, .trailing], 27.5)
            
            SignInWithAppleButton(.signIn, onRequest: { request in
                // Define the request here
                request.requestedScopes = [.fullName, .email]
            }, onCompletion: { result in
                // Handle the completion here
                switch result {
                case .success(let authorization):
                    // Handle authorization success
                    print("Authorization successful.")
                case .failure(let error):
                    // Handle authorization failure
                    print("Authorization failed: \(error.localizedDescription)")
                }
            })
            .frame(height: 50)
            .padding([.leading, .trailing], 27.5)
            
            Button(action: {
                print("Signup button tapped!")
                // Handle your signup logic here
            }) {
                Text("Sign Up")
                    .frame(minWidth: 0, maxWidth: .infinity)
                    .frame(height: 50)
                    .foregroundColor(.white)
                    .background(Color.purple)
                    .cornerRadius(10)
            }
            .padding([.leading, .trailing, .bottom], 27.5)
        }
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}

