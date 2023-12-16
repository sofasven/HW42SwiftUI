//
//  ColorSlider.swift
//  HW42SwiftUI
//
//  Created by Sofa on 13.12.23.
//

import SwiftUI

struct ColorSlider: View {
    
    @Binding var sliderValue: Double
    let color: Color
    var body: some View {
        VStack {
            HStack {
                Text("\(lround(sliderValue))").foregroundColor(.black)
                Slider(value: $sliderValue, in: 0 ... 255, step: 1)
                    .colorMultiply(color)
                    .cornerRadius(40)
            }.padding(.horizontal)
        }
    }
}
