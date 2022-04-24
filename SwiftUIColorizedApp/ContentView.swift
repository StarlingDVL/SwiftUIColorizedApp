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
    
    @FocusState private var textFieldIsEditing: Bool

    var body: some View {
        ZStack {
            Color.yellow.ignoresSafeArea()
            VStack(spacing: 30) {
                ColorizedRectangleView(red: redSliderValue, green: greenSliderValue, blue: blueSliderValue)
                VStack {
                    SliderView(sliderValue: $redSliderValue, color: .red)
                    SliderView(sliderValue: $greenSliderValue, color: .green)
                    SliderView(sliderValue: $blueSliderValue, color: .blue)
                }
                .focused($textFieldIsEditing)
                .toolbar {
                    ToolbarItemGroup(placement: .keyboard) {
                        Spacer()
                        Button("Done") {
                            textFieldIsEditing = false
                        }
                    }
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
