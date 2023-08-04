import SwiftUI

class UserAuth: ObservableObject {
    @Published var isSignedIn: Bool = false
}

@main
struct LandmarksApp: App {
    @ObservedObject var userAuth = UserAuth()

    var body: some Scene {
        WindowGroup {
            if userAuth.isSignedIn {
                TabView() // Assuming you have a struct defined as TabView
            } else {
                LoginView() // Assuming you have a struct defined as LoginView
            }
        }
    }
}

struct TabView: View {
    var body: some View {
        Text("TabView Content")
    }
}

struct LoginView: View {
    var body: some View {
        Text("LoginView Content")
    }
}
