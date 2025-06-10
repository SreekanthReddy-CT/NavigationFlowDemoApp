import SwiftUI

struct FirstLinkView: View {
    
    init() {
        print("Initialized: \(Self.self)")
    }
    
    var body: some View {
        VStack(spacing: 20) {
            Text("First Link View")
                .font(.largeTitle)
            
            NavigationLink("Go to Second Link View") {
                SecondLinkView()
            }
        }
        .navigationTitle("Link First")
    }
}
