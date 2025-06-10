import SwiftUI

struct NavigationStackFlowView: View {
    init() {
        print("Initialized: \(Self.self)")
    }
    
    var body: some View {
        NavigationStack {
            FirstStackView()
        }
    }
}
