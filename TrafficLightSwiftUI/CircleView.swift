//
//  CircleView.swift
//  TrafficLightSwiftUI
//
//  Created by Вячеслав Турчак on 12.08.2022.
//

import SwiftUI

struct CircleView: View {
    
    let color: Color
    
    var body: some View {
        Circle()
            .foregroundColor(color)
            .grayscale(0.6)
            .brightness(-0.4)
            .frame(width: 100, height: 100)
            .overlay(Circle().stroke(Color.white, lineWidth: 4))
    }
}

struct CircleView_Previews: PreviewProvider {
    static var previews: some View {
        CircleView(color: .green)
    }
}
