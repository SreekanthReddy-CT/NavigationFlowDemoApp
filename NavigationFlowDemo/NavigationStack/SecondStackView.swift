import SwiftUI

struct SecondStackView: View {
    
    init() {
        print("Initialized: \(Self.self)")
    }
    
    var body: some View {
        VStack(spacing: 20) {
            Text("Second Stack View")
                .font(.largeTitle)
        }
        .navigationTitle("Stack Second")
    }
}

