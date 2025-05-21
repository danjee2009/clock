import SwiftUI

struct ClockApp: App {
    init(){
        UIView.appearance().overrideUserInterfaceStyle = .dark
    }
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}



struct ContentView: View {
    var body: some View {
        TabView {
            worldclock()
                .tabItem {
                    Label("세계 시계", systemImage: "globe")
                }
            
            arlam()
                .tabItem {
                    Label("알람", systemImage: "alarm")
                }
            
            Stopwatch()
                .tabItem {
                    Label("스톱워치", systemImage: "stopwatch")
                }
            
            timer()
                .tabItem {
                    Label("타이머", systemImage: "timer")
                }
        }
        .preferredColorScheme(.dark)
    }
}





#Preview {
    ContentView()
}
