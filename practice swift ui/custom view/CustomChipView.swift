//
//  CustomChipView.swift
//  practice swift ui
//
//  Created by Wildan on 01/05/24.
//

import SwiftUI

struct ChipView: View {
    var text: String
    @Binding var isSelected: String?

    var body: some View {
        Button(action: {
            self.isSelected = self.text
        }) {
            Text(text)
                .padding(.vertical, 8)
                .padding(.horizontal, 18)
                .background(text == isSelected ? .orange : Color.orange.opacity(0.25))
                .roundedCornerWithBorder(lineWidth: 1, borderColor: .orange, radius: 6, corners: [.allCorners])
                .foregroundColor(text == isSelected ? .white : .orange)
        }
    }
}

struct CustomChipView_Previews: PreviewProvider {
    static var previews: some View {
        ChipView(text: "Project", isSelected: .constant("jhj"))
    }
}

