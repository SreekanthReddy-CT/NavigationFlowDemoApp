import SwiftUI

struct FirstPathView: View {
    @Binding var path: [PathDestination]
    
    init(path: Binding<[PathDestination]>) {
        self._path = path
        print("Initialized: \(Self.self)")
    }
    
    var body: some View {
        VStack(spacing: 20) {
            Text("First Path View")
                .font(.largeTitle)
            
            Button("Go to Second Path View") {
                path.append(PathDestination.second)
            }
        }
        .navigationTitle("Path First")
    }
}
