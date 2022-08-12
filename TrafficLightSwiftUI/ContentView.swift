//
//  ContentView.swift
//  TrafficLightSwiftUI
//
//  Created by Вячеслав Турчак on 12.08.2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(.black)
                .ignoresSafeArea()
            VStack {
                CircleView(color: .red)
                CircleView(color: .yellow)
                CircleView(color: .green)
            }
            
            .padding()
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
