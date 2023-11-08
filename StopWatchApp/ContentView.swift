//
//  ContentView.swift
//  StopWatchApp
//
//  Created by Cari van der Merwe on 2023-11-05.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            
            // First layer (Background)
            Color.black
                .ignoresSafeArea()
            
            // Second layer (rest of interface)
            VStack {
                
                Spacer()
                
                Text("00:09.96")
                    .font(Font.system(size: 90, weight: .thin))
                    .foregroundColor(.white)
               
                //Create a circular button
                HStack {
                    CircleButtonView (
                        buttonColor:Color("DarkGrey"),
                        label: "Reset",
                        labelColor: .white)
                    
                    Spacer()
                    
                    CircleButtonView(
                        buttonColor:Color("DarkGreen"),
                        label: "Start",
                        labelColor: .green
                        )
                    }
                // List of times
                List {
                    Group {
                        Text("1")
                        Text("2")
                        Text("3")
                        Text("4")
                        Text("5")
                    }
                   // remove all insets from list items
                    .listRowInsets(EdgeInsets(top:0,leading:0, bottom:0, trailing:0))
                }
                // set the amount of vertical height we want this list to take up.
                .frame(height:300)
                // adjust list style to match design.
                .listStyle(.plain)
            }
            .padding()
        }
    }
}

#Preview {
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
