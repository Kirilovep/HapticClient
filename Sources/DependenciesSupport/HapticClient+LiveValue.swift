//
//  HapticClient+LiveValue.swift
//  HapticClient
//
//  Created by Yehor Kyrylov on 20.05.2025.
//

import Dependencies
import HapticClient

extension HapticClient: DependencyKey {

    public static var liveValue: HapticClient {
        return Self()
    }
}
