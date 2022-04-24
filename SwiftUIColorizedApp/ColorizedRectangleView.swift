//
//  ColorizedRectangleView.swift
//  SwiftUIColorizedApp
//
//  Created by Юрий Скворцов on 25.04.2022.
//

import SwiftUI

struct ColorizedRectangleView: View {
    let red: Double
    let green: Double
    let blue: Double
    
    var body: some View {
        Color(red: red/255, green: green/255, blue: blue/255)
            .cornerRadius(10)
            .frame(height: 200)
            .overlay(RoundedRectangle(cornerRadius: 10)
                .stroke(Color.white, lineWidth: 3)
            )
    }
}

struct ColorizedRectangleView_Previews: PreviewProvider {
    static var previews: some View {
        ColorizedRectangleView(red: 150, green: 150, blue: 150)
    }
}
