//
//  ContentView.swift
//  SwiftUIColorizedApp
//
//  Created by Юрий Скворцов on 24.04.2022.
//

import SwiftUI

struct ContentView: View {
    @State private var sliderValue = 100.0
    @State private var sliderTextValue = ""
    
    var body: some View {
        ZStack {
            Color.yellow.ignoresSafeArea()
            VStack {
                RoundedRectangle(cornerRadius: 10)
                    .frame(width: 350, height: 200)
                HStack(spacing: 10) {
                    Text("\(lround(sliderValue))")
                        .frame(width: 50)
                    Slider(value: $sliderValue, in:  0...255)
                    TextField("255", text: $sliderTextValue)
                        .textFieldStyle(.roundedBorder)
                        .frame(width: 50)
                }
                Spacer()
            }
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
