import SwiftUI

enum PathDestination: Hashable {
    case first
    case second
}

struct NavigationStackWithPathFlowView: View {
    @State private var path = NavigationPath()
    
    init() {
        print("Initialized: \(Self.self)")
    }
    
    var body: some View {
        NavigationStack(path: $path) {
            VStack(spacing: 20) {
                Text("PathStack Root View")
                    .font(.largeTitle)
                
                Button("Push First Path View") {
                    path.append(PathDestination.first)
                }
            }
            .navigationDestination(for: PathDestination.self) { destination in
                switch destination {
                case .first:
                    FirstPathView(path: $path)
                case .second:
                    SecondPathView()
                }
            }
            .navigationTitle("Path Root")
        }
    }
}
