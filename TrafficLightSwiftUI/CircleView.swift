//
//  CircleView.swift
//  TrafficLightSwiftUI
//
//  Created by Вячеслав Турчак on 12.08.2022.
//

import SwiftUI

struct CircleView: View {
    
    let color: Color
    let grayscale: Double
    let brightness: Double
    
    var body: some View {
        Circle()
            .foregroundColor(color)
            .grayscale(grayscale)
            .brightness(brightness)
            .frame(width: 100, height: 100)
            .overlay(Circle().stroke(Color.white, lineWidth: 4))
    }
}

struct CircleView_Previews: PreviewProvider {
    static var previews: some View {
        CircleView(color: .red, grayscale: 0.4, brightness: -0.6)
    }
}
