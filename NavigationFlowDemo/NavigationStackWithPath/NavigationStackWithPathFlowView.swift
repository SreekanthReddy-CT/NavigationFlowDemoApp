import SwiftUI

enum PathDestination: Hashable {
    case first
    case second
    
    @MainActor @ViewBuilder
    func destinationView(path: Binding<[Self]>) -> some View {
        switch self {
        case .first:
            FirstPathView(path: path)
        case .second:
            SecondPathView()
        }
    }
}

struct NavigationStackWithPathFlowView: View {
    @State private var path: [PathDestination] = []
    
    init() {
        print("Initialized: \(Self.self)")
    }
    
    var body: some View {
        NavigationStack(path: $path) {
            FirstPathView(path: $path)
            .navigationDestination(for: PathDestination.self) { destination in
                destination.destinationView(path: $path)
            }
            .navigationTitle("Path Root")
        }
    }
}
