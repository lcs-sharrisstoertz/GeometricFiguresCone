//
//  Cone.swift
//  GeometricFiguresCone
//
//  Created by Skye Willow Harris-Stoertz on 2024-10-29.
//

import Foundation


// Define the protocol
protocol Describable {
    var description: String { get }
}

// Define the structure, adopting the new protocol
struct Cone: Describable {
    
    // MARK: Stored Properties
    var radius: Double
    
    var side: Double
    
    var height: Double
    
    // MARK: Computed Properties
    var diameter: Double {
        return radius * 2
    }
    
    var surfaceArea: Double {
        return Double.pi * (radius * radius) + Double.pi * radius * side
    }
    
    var volume: Double {
        return (Double.pi * (radius * radius) * height) / 3
    }
    
    var description: String {
        return "A cone with a radius of \(radius), a side of \(side), and a height of \(height)."
    }
    
}
