//
//  TrailMarkWatch_CoHo11App.swift
//  TrailMarkWatch_CoHo11 Watch App
//
//  Created by Stephen Truitt on 10/10/26.
//

import SwiftUI
import HealthKit
import WatchKit
import TrailMarkCore_CoHo11

@main
struct TrailMarkWatch_CH11_Watch_AppApp: App {
    // The delegate owns the model so a workout launch from the phone can reach it
    // even before any view exists.
    @WKApplicationDelegateAdaptor private var appDelegate: WatchAppDelegate
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(appDelegate.model)
        }
    }
}

final class WatchAppDelegate: NSObject, WKApplicationDelegate {
    let model = WatchModel()

    /// Called when the phone's "Start Journey" launches us with
    /// `HKHealthStore.startWatchApp(with:)`. The journey ID follows separately over
    /// WatchConnectivity; `start` attaches it whichever arrives first.
    func handle(_ workoutConfiguration: HKWorkoutConfiguration) {
        model.workout.start()
    }
}
