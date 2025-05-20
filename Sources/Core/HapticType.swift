//
//  HapticType.swift
//  HapticClient
//
//  Created by Yehor Kyrylov on 20.05.2025.
//

import UIKit

/// Represents a type of haptic feedback that can be triggered.
public enum HapticType: Sendable {

    /// Notification feedback (e.g. `.success`, `.warning`, `.error`).
    case feedbackType(UINotificationFeedbackGenerator.FeedbackType)

    /// Impact feedback (e.g. `.light`, `.medium`, `.heavy`).
    case feedbackStyle(UIImpactFeedbackGenerator.FeedbackStyle)

    /// Selection feedback (used for indicating selection changes).
    case selection
}
