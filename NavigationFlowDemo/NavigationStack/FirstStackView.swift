import SwiftUI

struct FirstStackView: View {
    @State private var showSecondView = false
    
    init() {
        print("Initialized: \(Self.self)")
    }
    
    var body: some View {
        VStack(spacing: 20) {
            Text("First Stack View")
                .font(.largeTitle)
            
            Button("Go to Second Stack View") {
                showSecondView = true
            }
        }
        .navigationTitle("Stack First")
        .navigationDestination(isPresented: $showSecondView) {
            SecondStackView()
        }
    }
}
