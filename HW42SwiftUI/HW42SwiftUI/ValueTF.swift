//
//  ValueTF.swift
//  HW42SwiftUI
//
//  Created by Sofa on 13.12.23.
//

import SwiftUI

struct ValueTF: View {
    
    @Binding var sliderValue: Double
    
    @State var showAlert = false
    @State var newValue = 0.0
    
    var body: some View {
        TextField("0.0", text: textValue) {
            sliderValue = newValue
        } .bordered()
            .alert(isPresented: $showAlert) {
                Alert(title: Text("Wrong value"),
                message: Text("Please enter value from 0 to 255"))
            }
    }
}


