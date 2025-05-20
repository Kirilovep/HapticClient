//
//  HapticClient+Dependency.swift
//  HapticClient
//
//  Created by Yehor Kyrylov on 20.05.2025.
//

import HapticClient
import Dependencies

public extension DependencyValues {
    var hapticClient: HapticClient {
        get { self[HapticClient.self] }
        set { self[HapticClient.self] = newValue }
    }
}
