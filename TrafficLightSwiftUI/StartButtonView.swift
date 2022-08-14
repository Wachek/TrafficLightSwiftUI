//
//  StartButtonView.swift
//  TrafficLightSwiftUI
//
//  Created by Вячеслав Турчак on 12.08.2022.
//

import SwiftUI

struct StartButtonView: View {
    var body: some View {
        Button (action: {}) {
            Text("START")
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
    }
}

struct StartButtonView_Previews: PreviewProvider {
    static var previews: some View {
        StartButtonView()
    }
}
