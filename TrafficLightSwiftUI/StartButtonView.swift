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
                .border(Color.white, width: 4)
                .cornerRadius(40)
                .background(Color.blue)
                .foregroundColor(.white)
          
        }
        
//        .frame(width: 150, height: 50)
    }
}

struct StartButtonView_Previews: PreviewProvider {
    static var previews: some View {
        StartButtonView()
    }
}
