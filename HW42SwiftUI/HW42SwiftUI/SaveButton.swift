//
//  saveButton.swift
//  HW42SwiftUI
//
//  Created by Sofa on 13.12.23.
//

import SwiftUI

struct SaveButton: View {
    
    let title: String
    let width: CGFloat
    let height: CGFloat
    let backgroundColor: Color
    let action: () -> Void
    
    var body: some View {
        Button(action: action) {
            Text(title)
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(.white)
        }
        .frame(width: width, height: height)
        .background(backgroundColor)
        .cornerRadius(height / 2)
        .overlay(RoundedRectangle(cornerRadius: height / 2, style: .continuous)
                .stroke(Color.white, lineWidth: 4)
        )
        .padding()
    }
}

struct SaveButton_Previews: PreviewProvider {
    static var previews: some View {
        SaveButton(title: "Save", width: 300, height: 60, backgroundColor: .blue, action: {})
    }
}
