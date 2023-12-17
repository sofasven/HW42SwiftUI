//
//  Extensions.swift
//  HW42SwiftUI
//
//  Created by Sofa on 13.12.23.
//

import SwiftUI

extension TextField {
    func bordered() -> some View {
        ModifiedContent(content: self, modifier: BorderedViewModifaer())
    }
}

extension ValueTF {
    var textValue: Binding<String> {
        Binding<String>(
            get: {
                "\(lround(sliderValue))"
            },
            set: {
                if let number = NumberFormatter().number(from: $0) {
                    let doubleValue = number.doubleValue
                    if !(0 ... 255).contains(doubleValue) {
                        newValue = 0
                        showAlert.toggle()
                        return
                    }
                    newValue = doubleValue
                } else {
                    newValue = 0
                    showAlert.toggle()
                }
            }
        )
    }
}

