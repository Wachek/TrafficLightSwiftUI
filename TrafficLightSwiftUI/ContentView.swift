//
//  ContentView.swift
//  TrafficLightSwiftUI
//
//  Created by Вячеслав Турчак on 12.08.2022.
//

import SwiftUI

enum CurrentLight {
    case red, yellow, green
}

struct ContentView: View {
    
    @State private var redCircle = CircleView(color: .red, grayscale: 0.4, brightness: -0.6)
    @State private var yellowCircle = CircleView(color: .yellow, grayscale: 0.4, brightness: -0.6)
    @State private var greenCircle = CircleView(color: .green, grayscale: 0.4, brightness: -0.6)
    
    @State private var currentLight = CurrentLight.red
    
    @State private var buttonText: String = "START"
    
    var body: some View {
        ZStack {
            Color(.black)
                .ignoresSafeArea()
            VStack {
                VStack {
                    redCircle
                    yellowCircle
                    greenCircle
                }
                .padding()
                Spacer()
                Button (action: {
                    
                    buttonText = "NEXT"
                    
                        switch currentLight {
                        case .red:
                            greenCircle = CircleView(color: .green, grayscale: 0.4, brightness: -0.6)
                            redCircle = CircleView(color: .red, grayscale: 0, brightness: 0)
                            currentLight = CurrentLight.yellow
                        case .yellow:
                            redCircle = CircleView(color: .red, grayscale: 0.4, brightness: -0.6)
                            yellowCircle = CircleView(color: .yellow, grayscale: 0, brightness: 0)
                            currentLight = CurrentLight.green
                        case .green:
                            yellowCircle = CircleView(color: .yellow, grayscale: 0.4, brightness: -0.6)
                            greenCircle = CircleView(color: .green, grayscale: 0, brightness: 0)
                            currentLight = CurrentLight.red
                        }
                }) {
                    Text(buttonText)
                        .font(.title)
                        .fontWeight(.bold)
                        .padding(10)
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(40)
                        .overlay(
                            RoundedRectangle(cornerRadius: 40)
                                .stroke(Color.white, lineWidth: 4))
                }
                    .padding()
            }
        }
    }
    
    
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
