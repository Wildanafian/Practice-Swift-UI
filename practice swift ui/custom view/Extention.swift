//
//  Extention.swift
//  practice swift ui
//
//  Created by Wildan on 30/04/24.
//

import SwiftUI

extension View {
    func paddingLR(leading: CGFloat, trailing: CGFloat) -> some View {
            self.padding(EdgeInsets.init(top: 0, leading: leading, bottom: 0, trailing: trailing))
    }
}

struct RoundedCorner: Shape {
    var radius: CGFloat = .infinity
    var corners: UIRectCorner = .allCorners
    
    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
        return Path(path.cgPath)
    }
}

extension View {
    func roundedCornerWithBorder(lineWidth: CGFloat, borderColor: Color, radius: CGFloat, corners: UIRectCorner) -> some View {
        clipShape(RoundedCorner(radius: radius, corners: corners) )
            .overlay(RoundedCorner(radius: radius, corners: corners)
                .stroke(borderColor, lineWidth: lineWidth))
    }
}
