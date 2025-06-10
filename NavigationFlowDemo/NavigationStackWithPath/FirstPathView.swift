import SwiftUI

struct FirstPathView: View {
    @Binding var path: NavigationPath
    
    init(path: Binding<NavigationPath>) {
        self._path = path
        print("Initialized: \(Self.self)")
    }
    
    var body: some View {
        VStack(spacing: 20) {
            Text("First Path View")
                .font(.largeTitle)
            
            Button("Push Second Path View") {
                path.append(PathDestination.second)
            }
            
            Button("Pop to Root") {
                path.removeLast(path.count)
            }
        }
        .navigationTitle("Path First")
    }
}
