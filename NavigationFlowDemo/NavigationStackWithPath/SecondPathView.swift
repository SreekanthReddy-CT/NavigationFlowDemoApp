import SwiftUI

struct SecondPathView: View {
    init() {
        print("Initialized: \(Self.self)")
    }
    
    var body: some View {
        VStack(spacing: 20) {
            Text("Second Path View")
                .font(.largeTitle)
        }
        .navigationTitle("Path Second")
    }
}
