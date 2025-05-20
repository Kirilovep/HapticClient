//
//  HapticClient.swift
//  HapticClient
//
//  Created by Yehor Kyrylov on 20.05.2025.
//

import Foundation
import UIKit

/// A client for triggering haptic feedback.
///
/// Use `vibrate(_:)` to play a specific haptic event.
public struct HapticClient: Sendable {

    /// Creates a new `HapticClient` instance.
    public init() {}

    /// Triggers the given haptic type on the main thread.
    ///
    /// - Parameter hapticType: The type of haptic feedback to play.
    public func vibrate(_ hapticType: HapticType) {
        Task { @MainActor in
            switch hapticType {
            case let .feedbackType(type):
                let notificationFeedbackGenerator = UINotificationFeedbackGenerator()
                notificationFeedbackGenerator.prepare()
                notificationFeedbackGenerator.notificationOccurred(type)

            case let .feedbackStyle(style):
                let impactFeedbackGenerator = UIImpactFeedbackGenerator(style: style)
                impactFeedbackGenerator.prepare()
                impactFeedbackGenerator.impactOccurred()

            case .selection:
                UISelectionFeedbackGenerator().selectionChanged()
            }
        }
    }
}
