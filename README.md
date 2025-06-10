# NavigationFlowDemoApp

A demo project showcasing how to solve the **Pre-initialization Problem** in SwiftUI navigation patterns.

## The Problem: Pre-initialization

In below navigation patterns, destination views are **pre-initialized** as soon as the first view appears:
- NavigationLink
- NavigationStack + `.navigationDestination(isPresented:)`

**Goal:** Initialize destination views **only when the user navigates to them**.

**Solution:**
By adopting `.navigationDestination(for:)` with `NavigationPath` to enable **on-demand (lazy)** initialization.


## Key Observations

| Pattern | View Initialization Timing |
|---------|----------------------------|
| NavigationLink | Pre-initialized |
| NavigationStack + `.navigationDestination(isPresented:)` | Pre-initialized |
| NavigationStack + `.navigationDestination(for:)` + `NavigationPath` | On-demand (lazy) |

> Pre-initialization is a side effect of SwiftUI’s diffing and rendering engine. The `.navigationDestination(for:)` closure is not strictly lazy unless used with `NavigationPath`.


## Benefits of `.navigationDestination(for:)` with `NavigationPath`

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
