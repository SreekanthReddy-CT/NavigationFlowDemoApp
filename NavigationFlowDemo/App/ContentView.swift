import SwiftUI

struct ContentView: View {
    @State private var showNavigationStackFlow = false
    @State private var showNavigationLinkFlow = false
    @State private var showNavigationStackPathFlow = false
    
    init() {
        print("Initialized: \(Self.self)")
    }
    
    var body: some View {
        VStack(spacing: 20) {
            
            Spacer()
            
            Button("NavigationLink Flow") {
                showNavigationLinkFlow = true
            }
            .sheet(isPresented: $showNavigationLinkFlow) {
                NavigationLinkFlowView()
            }
            
            Spacer()
            
            
            Button("NavigationStack Flow") {
                showNavigationStackFlow = true
            }
            .sheet(isPresented: $showNavigationStackFlow) {
                NavigationStackFlowView()
            }
            
            Spacer()
            
            
            Button("NavigationStackWithPath Flow") {
                showNavigationStackPathFlow = true
            }
            .sheet(isPresented: $showNavigationStackPathFlow) {
                NavigationStackWithPathFlowView()
            }
            
            Spacer()
        }
        .navigationTitle("Navigation Demo")
    }
}


#Preview {
    ContentView()
}
