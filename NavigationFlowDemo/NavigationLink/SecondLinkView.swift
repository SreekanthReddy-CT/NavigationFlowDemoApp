import SwiftUI

struct SecondLinkView: View {
    
    init() {
        print("Initialized: \(Self.self)")
    }
    
    var body: some View {
        VStack(spacing: 20) {
            Text("Second Link View")
                .font(.largeTitle)
        }
        .navigationTitle("Link Second")
    }
}
