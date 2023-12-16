//
//  ColorView.swift
//  HW42SwiftUI
//
//  Created by Sofa on 13.12.23.
//

import SwiftUI

struct ColorView: View {
    
    let red: Double
    let green: Double
    let blue: Double
    let size: CGSize
    
    var body: some View {
            VStack {
                Rectangle()
                    .modifier(FrameFromSize(size: size))
                    .cornerRadius(20)
                    .overlay(RoundedRectangle(cornerRadius: 20)
                        .stroke(lineWidth: 3)
                        .foregroundColor(.white))
                    .shadow(color: .black.opacity(1), radius: 20, x: 5, y: 5)
                    .foregroundColor(Color(red: red / 255, green: green / 255, blue: blue / 255))
            }.padding()
        }
    }

struct ColorView_Previews: PreviewProvider {
    static var previews: some View {
        ColorView(red: 200, green: 50, blue: 20, size: CGSize(width: 350, height: 150))
    }
}
