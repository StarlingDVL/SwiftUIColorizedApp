//
//  ContentView.swift
//  SwiftUIColorizedApp
//
//  Created by Юрий Скворцов on 24.04.2022.
//

import SwiftUI

struct ContentView: View {
    @State private var redSliderValue = Double.random(in: 0...255)
    @State private var greenSliderValue = Double.random(in: 0...255)
    @State private var blueSliderValue = Double.random(in: 0...255)

    var body: some View {
        ZStack {
            Color.yellow.ignoresSafeArea()
            VStack {
                ColorizedRectangleView(red: redSliderValue, green: greenSliderValue, blue: blueSliderValue)
                SliderView(value: $redSliderValue, color: .red)
                SliderView(value: $greenSliderValue, color: .green)
                SliderView(value: $blueSliderValue, color: .blue)
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
