//
//  ColorTextFieldView.swift
//  SwiftUIColorizedApp
//
//  Created by Юрий Скворцов on 25.04.2022.
//

import SwiftUI

struct ColorTextFieldView: View {
    @State private var showAlert = false
    
    @Binding var sliderValue: Double
    @Binding var userValue: String
    
    var body: some View {
        TextField("", text: $userValue) { _ in
            checkValue()
        }
        .frame(width: 50)
        .textFieldStyle(.roundedBorder)
        .keyboardType(.decimalPad)
        .alert("Wrong format", isPresented: $showAlert, actions: {}) {
            Text("Please enter value from 0 to 255")
        }
    }
    
    private func checkValue() {
        if let value = Double(userValue), (0...255).contains(value) {
            sliderValue = value
            return
        }
        userValue = "255"
        sliderValue = 255
        showAlert.toggle()
    }
}

struct ColorTextFieldView_Previews: PreviewProvider {
    static var previews: some View {
        ColorTextFieldView(sliderValue: .constant(0.0), userValue: .constant("0"))
    }
}
