# HapticClient

`HapticClient` is a lightweight Swift package that provides a simple and unified interface for triggering haptic feedback on Apple platforms. It supports both UIKit and SwiftUI.

## 📦 Installation

Add the following to your `Package.swift`:

```swift
.package(url: "https://github.com/Kirilovep/HapticClient", from: "1.0.0")

.target(
    name: "YourApp",
    dependencies: [
        .product(name: "HapticClient", package: "HapticClient"),
        .product(name: "HapticClientSwiftUI", package: "HapticClient"), // for SwiftUI support
    ]
)

```
## ✨ Usage

```swift
import HapticClient

let haptic = HapticClient()
haptic.vibrate(.feedbackType(.success))
haptic.vibrate(.feedbackStyle(.medium))
haptic.vibrate(.selection)

```
## SwiftUI

```swift
import SwiftUI
import HapticClientSwiftUI

struct ContentView: View {
    @Environment(\.hapticClient) private var haptic

    var body: some View {
        Button("Tap me") {
            haptic.vibrate(.selection)
        }
    }
}

```
## 🔍 API
Main interface for triggering haptic feedback.
```swift
public struct HapticClient: Sendable {
    public init()
    public func vibrate(_ hapticType: HapticType)
}
```
Enumeration of available haptic feedback types:
```swift
public enum HapticType: Sendable {
    case feedbackType(UINotificationFeedbackGenerator.FeedbackType)
    case feedbackStyle(UIImpactFeedbackGenerator.FeedbackStyle)
    case selection
}

```
## 🔧 SwiftUI Environment
Seamlessly integrates with `SwiftUI` via the environment:
```swift
extension EnvironmentValues {
    public var hapticClient: HapticClient
}
```
This makes `HapticClient` easily accessible with `@Environment`.

## 👨‍💻 Author
https://github.com/Kirilovep

## Contributing
Contributions are always welcome! Feel free to submit a pull request or open an issue for any suggestions or improvements you have.

## License
HapticsClient is licensed under the MIT License. See the LICENCE file for more details.
