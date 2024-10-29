//
//  ConeView.swift
//  GeometricFiguresCone
//
//  Created by Skye Willow Harris-Stoertz on 2024-10-29.
//

import SwiftUI


struct ConeView: View {
    
    // MARK: Stored Properties
    @State var currentCone = Cone(radius: 50, side: 50, height: 50)
    
    // MARK: Computed Properties
    
    var body: some View {
        VStack{
            
            // Add an image
            Image("Cone")
                .resizable()
                .scaledToFit()
            
            // Label (describe what the slider is for)
            Text("Radius (cm): \(currentCone.radius.formatted())")
            
            // 1. INPUT
            // Slider control - to allow for user input
            Slider(
                value: $currentCone.radius,
                in: 1...100,
                step: 1.0
            )
            
            // Label (describe what the slider is for)
            Text("Side (cm): \(currentCone.side.formatted())")
            
            Slider(
                value: $currentCone.side,
                in: 1...100,
                step: 1.0
            )
            
            // Label (describe what the slider is for)
            Text("Height (cm): \(currentCone.height.formatted())")
            
            Slider(
                value: $currentCone.height,
                in: 1...100,
                step: 1.0
            )
            
            // 3. OUTPUT
            
            // Label (show the diameter)
            Text("Diameter (cm) is: \(currentCone.diameter.formatted())")
            
            // Label (show the surface area)
            Text("Surface Area (cm) is: \(currentCone.surfaceArea.formatted())")
            
            // Label (show the volume)
            Text("Volume (mL) is: \(currentCone.volume.formatted())")
            
            Spacer()
            
        }
        .padding()
    }
}

#Preview {
    ConeView()
}
