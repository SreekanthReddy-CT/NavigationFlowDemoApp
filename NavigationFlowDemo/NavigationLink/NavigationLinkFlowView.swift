import SwiftUI

struct NavigationLinkFlowView: View {
    init() {
        print("Initialized: \(Self.self)")
    }
    
    var body: some View {
        NavigationStack {
            FirstLinkView()
        }
    }
}
