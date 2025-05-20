//
//  EnvironmentValues+Extension.swift
//  HapticClient
//
//  Created by Yehor Kyrylov on 20.05.2025.
//

import SwiftUI
import Core

private struct HapticClientKey: EnvironmentKey {
    static let defaultValue: HapticClient = HapticClient()
}

extension EnvironmentValues {

    /// Provides access to a `HapticClient` via the SwiftUI environment.
    ///
    /// Useful for triggering haptics inside SwiftUI views.
    public var hapticClient: HapticClient {
        get { self[HapticClientKey.self] }
        set { self[HapticClientKey.self] = newValue }
    }
}
