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
            }
            .padding()
        }
    }
}

#Preview {
    ContentView()
}
