//
//  AppModel.swift
//  TrailMark_CH11
//
//  Created by Stephen Truitt on 10/14/26.
//

import Foundation
import Observation
import TrailMarkCore_CoHo11

// Owns the long-lived managers and wires up cross-device sync. Injected into the
// SwiftUI environment so every screen shares one instance of each manager.

@MainActor
@Observable
final class AppModel {
    let health = HealthKitManager()
    let media = MediaStore()
    let location = LocationManager()
    
    init() {}
    
}
