//
//  ColorValueText.swift
//  SwiftUIColorizedApp
//
//  Created by Юрий Скворцов on 25.04.2022.
//

import SwiftUI

struct ColorValueTextView: View {
    var text: Double
    
    var body: some View {
        Text("\(lround(text))")
            .frame(width: 35)
    }
}

struct ColorValueText_Previews: PreviewProvider {
    static var previews: some View {
        ColorValueTextView(text: 0.0)
    }
}
