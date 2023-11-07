//
//  StopWatchAppApp.swift
//  StopWatchApp
//
//  Created by Cari van der Merwe on 2023-11-05.
//

import SwiftUI

@main
struct StopWatchAppApp: App {
    var body: some Scene {
        WindowGroup {
            TabView(selection: Binding.constant(3)) {
                
                Text("World Clock")
                    .tabItem {
                        Image(systemName: "globe")
                        Text("World Clock")
                        
                    }
                
                Text("Alarm")
                    .tabItem {
                        Image(systemName: "alarm.fill")
                        Text ("Alarm")
                    }
                    ContentView()
                    .tabItem{
                        Image(systemName:"stopwatch.fill")
                        Text("Stopwatch")
                    }
                
                Text("Timer")
                    .tabItem {
                        Image(systemName: "timer")
                        Text("Timer")
                    }
            }
            // Change the accent color for the currently active tab item
            .accentColor(.orange)
            // Ensure tab items that are not active remain visible
            .preferredColorScheme(.dark)
        }
    }
}
