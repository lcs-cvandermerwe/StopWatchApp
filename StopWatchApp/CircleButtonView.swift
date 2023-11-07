//
//  CircleButtonView.swift
//  StopWatchApp
//
//  Created by Cari van der Merwe on 2023-11-05.
//

import SwiftUI

struct CircleButtonView: View {
    
    // MARK: Computed properties
    let buttonColor: Color
    let label: String
    let labelColor: Color
    
    // MARK: Computed properties
    
    // Returns the button's user interface...
    var body: some View {
        ZStack {
            
            //First layer
            Circle()
                .foregroundColor(buttonColor)
            .frame(width: 100)
            
            // Second Layer
            Circle()
                .foregroundColor(.black)
                .frame(width:93)
            
            // Third Layer
            Circle()
                .foregroundColor(buttonColor)
                .frame(width:89)
            
            // Fourth Layer
            Text("Reset")
                .foregroundColor(labelColor)
                .font(.title2)
        }
    }
}

#Preview {
    CircleButtonView(
        buttonColor: Color("DarkGreen"),
        label: "Start",
        labelColor: .white
    )
}
