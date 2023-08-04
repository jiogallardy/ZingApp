import SwiftUI

struct MainView: View {
    @State private var selection = 0
 
    var body: some View {
        TabView()
            HomeView()
                .badge(2)
                .font(.title)
                .tabItem {
                    VStack {
                        Image(systemName: "house")
                        Text("Home")
                    }
                }
                .tag(0)
    
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
