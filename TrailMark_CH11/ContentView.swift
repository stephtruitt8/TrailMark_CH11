//
//  ContentView.swift
//  TrailMark_CH11
//
//  Created by Stephen Truitt on 10/10/26.
//

import SwiftUI
import TrailMarkCore_CoHo11

struct ContentView: View {
    @Environment(AppModel.self) private var model
    
    var body: some View {
        TabView {
            TodayDashboardView()
                .tabItem { Label("Today", systemImage: "sun.max.fill") }
        }
        .task {
            await model.health.requestAuth()
            await model.health.refreshTodaysSummary()
        }
    }
}




//import SwiftUI
//
//struct ContentView: View {
//
//    var body: some View {
//
//        NavigationStack {
//
//            ScrollView {
//
//                VStack(alignment: .leading, spacing: 20) {
//
//                    Text("Today's Data ☀️")
//                        .font(.system(size: 34, weight: .bold))
//                        .multilineTextAlignment(.center)
//                        .frame(maxWidth: .infinity)
//                        .padding(.bottom, 10)
//                    
//                    // Steps
//                    ActivityCardView(
//                        title: "Steps",
//                        value: "8,400",
//                        icon: "figure.walk",
//                        cardColor: Color.orange.opacity(0.18),
//                        iconColor: .orange
//                    )
//
//                    // Distance
//                    ActivityCardView(
//                        title: "Distance",
//                        value: "5.24 km",
//                        icon: "point.topleft.down.to.point.bottomright.curvepath",
//                        cardColor: Color.mint.opacity(0.20),
//                        iconColor: .teal
//                    )
//
//                    // Active Energy
//                    ActivityCardView(
//                        title: "Active Energy",
//                        value: "412 kcal",
//                        icon: "flame.fill",
//                        cardColor: Color.pink.opacity(0.18),
//                        iconColor: .pink
//                    )
//
//                }
//                .padding(20)
//            }
//            .background(
//                Color.blue.opacity(0.05)
//                    .ignoresSafeArea()
//            )
//        }
//    }
//}
//
//#Preview {
//    ContentView()
//}
