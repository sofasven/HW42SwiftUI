//
//  ViewModifires.swift
//  HW42SwiftUI
//
//  Created by Sofa on 13.12.23.
//

import SwiftUI

struct FrameFromSize: ViewModifier {
    
    let size: CGSize
    
    func body(content: Content) -> some View {
        content
            .frame(width: size.width, height: size.height)
    }
}
struct BorderedViewModifaer: ViewModifier {
    func body(content: Content) -> some View {
        content
            .padding(EdgeInsets(top: 8, leading: 16, bottom: 8, trailing: 16))
            .overlay(RoundedRectangle(cornerRadius: 8)
                .stroke(lineWidth: 3)
                .foregroundColor(.gray))
            .shadow(color: .black.opacity(1), radius: 8, x: 5, y: 5)
            .frame(width: 65)
    }
}
