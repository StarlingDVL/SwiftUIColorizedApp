//
//  SliderView.swift
//  SwiftUIColorizedApp
//
//  Created by Юрий Скворцов on 25.04.2022.
//

import SwiftUI

struct SliderView: View {
    @State private var textFieldValue = ""
    @Binding var sliderValue: Double
    
    let color: Color
    
    var body: some View {
        HStack(spacing: 10) {
            ColorValueTextView(text: sliderValue)
            Slider(value: $sliderValue, in: 0...255)
                .tint(color)
                .onChange(of: sliderValue) { newValue in
                    textFieldValue = "\(lround(newValue))"
                }
            ColorTextFieldView(sliderValue: $sliderValue, userValue: $textFieldValue)
        }
        .onAppear() {
            textFieldValue = "\(lround(sliderValue))"
        }
    }
}

struct SliderView_Previews: PreviewProvider {
    static var previews: some View {
        SliderView(sliderValue: .constant(100.0), color: .red)
    }
}
