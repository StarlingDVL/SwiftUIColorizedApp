//
//  SliderView.swift
//  SwiftUIColorizedApp
//
//  Created by Юрий Скворцов on 25.04.2022.
//

import SwiftUI

struct SliderView: View {
    @Binding var value: Double
    
    let color: Color
    
    var body: some View {
        Slider(value: $value, in: 0...255)
            .tint(color)
    }
}

struct SliderView_Previews: PreviewProvider {
    static var previews: some View {
        SliderView(value: .constant(100.0) , color: .red)
    }
}
