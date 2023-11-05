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
                ZStack {
                    
                    //First layer
                    Circle()
                        .foregroundColor(.gray)
                    .frame(width: 100)
                    
                    // Second Layer
                    Circle()
                        .foregroundColor(.black)
                        .frame(width:93)
                    
                    // Third Layer
                    Circle()
                        .foregroundColor(.gray)
                        .frame(width:89)
                    
                    // Fourth Layer
                    Text("Reset")
                        .foregroundColor(.white)
                        .font(.title2)
                }
            }
            .padding()
        }
    }
}

#Preview {
    ContentView()
}
