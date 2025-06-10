# NavigationFlowDemoApp

A demo project showcasing different navigation patterns in SwiftUI:

- `NavigationLink`
- `NavigationStack` with `.navigationDestination(isPresented:)`
- `NavigationStack` with `.navigationDestination(for:)` using `NavigationPath`

## Objective

This project demonstrates key differences in **view initialization timing** across navigation patterns in SwiftUI, and highlights why adopting `.navigationDestination(for:)` with `NavigationPath` is recommended for building scalable, lifecycle-safe navigation flows.

## Key Observations

| Pattern | View Initialization Timing |
|---------|----------------------------|
| NavigationLink | Pre-initialized |
| NavigationStack + `.navigationDestination(isPresented:)` | Pre-initialized |
| NavigationStack + `.navigationDestination(for:)` + `NavigationPath` | On-demand (lazy) |

> Pre-initialization is a side effect of SwiftUI’s diffing and rendering engine. The `.navigationDestination(for:)` closure is not strictly lazy unless used with `NavigationPath`.

## Recommended Pattern

```swift
NavigationStack(path: $path)
    .navigationDestination(for: MyEnum.self) { ... }
```

## Benefits

- Programmatic navigation
- Type-safe navigation
- Deep linking support
- On-demand (lazy) view initialization
- Clear navigation state management
- Scalable architecture for large apps

## Minimum iOS Version

- `.navigationDestination(for:)` with `NavigationPath` is supported on **iOS 16+**.

## References

- Apple Documentation: [View.navigationDestination(for:destination:)](https://developer.apple.com/documentation/swiftui/view/navigationdestination(for:destination:))
