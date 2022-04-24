//
//  ContentView.swift
//  SwiftUIColorizedApp
//
//  Created by Юрий Скворцов on 24.04.2022.
//

import SwiftUI

enum CurrentColor {
    case red, green, blue
}

struct ContentView: View {
    @State private var redSliderValue = Double.random(in: 0...255)
    @State private var greenSliderValue = Double.random(in: 0...255)
    @State private var blueSliderValue = Double.random(in: 0...255)

    var body: some View {
        ZStack {
            Color.yellow.ignoresSafeArea()
            VStack {
                ColorizedRectangleView(red: redSliderValue, green: greenSliderValue, blue: blueSliderValue)
                SliderStackView(sliderValue: $redSliderValue, color: .red)
                SliderStackView(sliderValue: $greenSliderValue, color: .green)
                SliderStackView(sliderValue: $blueSliderValue, color: .blue)
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

struct SliderStackView: View {
    @Binding var sliderValue: Double
    var color: Color
    
    var body: some View {
        HStack(spacing: 10) {
            ColorValueTextView(text: sliderValue)
            SliderView(value: $sliderValue, color: color)
        }
    }
}
