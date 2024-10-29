//
//  ConeView.swift
//  GeometricFiguresCone
//
//  Created by Skye Willow Harris-Stoertz on 2024-10-29.
//

import SwiftUI


struct ConeView: View {
    
    // MARK: Stored Properties
    @State var currentCone = Cone(radius: 10, side: 10, height: 10)
    
    // MARK: Computed Properties
    
    var body: some View {
        VStack{
            
            // Add an image
            Image("Cone")
                .resizable()
                .scaledToFit()
            
            // Label (describe what the slider is for)
            Text("Radius")
            
            // 1. INPUT
            // Slider control - to allow for user input
            Slider(
                value: $currentCone.radius,
                in: 1...100,
                step: 1.0
            )
            
            // Label (describe what the slider is for)
            Text("Side")
            
            Slider(
                value: $currentCone.side,
                in: 1...100,
                step: 1.0
            )
            
            // Label (describe what the slider is for)
            Text("Height")
            
            Slider(
                value: $currentCone.height,
                in: 1...100,
                step: 1.0
            )
            
            // 3. OUTPUT
            // Label (show the current slider value)
            Text("Radius is: \(currentCone.radius.formatted())")
            
            // Label (show the diameter)
            Text("Diameter is: \(currentCone.diameter.formatted())")
            
            // Label (show the surface area)
            Text("Surface Area is: \(currentCone.surfaceArea.formatted())")
            
            // Label (show the volume)
            Text("Volume is: \(currentCone.volume.formatted())")
            
            Spacer()
            
        }
        .padding()
    }
}

#Preview {
    ConeView()
}