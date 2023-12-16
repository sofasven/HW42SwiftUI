//
//  ContentView.swift
//  HW42SwiftUI
//
//  Created by Sofa on 13.12.23.
//

import SwiftUI

struct ContentView: View {
    
    @State private var red: Double = 100
    @State private var green: Double = 100
    @State private var blue: Double = 100
    
    @State private var savedRed: Double = 100
    @State private var savedGreen: Double = 100
    @State private var savedBlue: Double = 100
    
    var body: some View {
        VStack {
            ColorView(red: red, green: green, blue: blue, size: CGSize(width: 350, height: 150))
            ColorView(red: savedRed, green: savedGreen, blue: savedBlue, size: CGSize(width: 350, height: 150))
            HStack {
                ColorSlider(sliderValue: $red, color: .red)
                ValueTF(sliderValue: $red)
            }
            HStack {
                ColorSlider(sliderValue: $green, color: .green)
                ValueTF(sliderValue: $green)
            }
            HStack {
                ColorSlider(sliderValue: $blue, color: .blue)
                ValueTF(sliderValue: $blue)
            }
            SaveButton(title: "Save", width: 300, height: 60, backgroundColor: .blue, action: {
                savedRed = red
                savedGreen = green
                savedBlue = blue
            })
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
