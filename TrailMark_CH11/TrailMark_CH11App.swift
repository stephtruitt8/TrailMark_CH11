//
//  TrailMark_CH11App.swift
//  TrailMark_CH11
//
//  Created by Stephen Truitt on 10/10/26.
//

import SwiftUI

@main
struct TrailMark_CH11App: App {
    @State private var model = AppModel()
    
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(model)
        }
    }
}
