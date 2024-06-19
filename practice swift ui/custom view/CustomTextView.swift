//
//  CustomTextView.swift
//  practice swift ui
//
//  Created by Wildan on 30/04/24.
//

import SwiftUI

struct Title: View {
    var title = ""
    var body: some View {
        Text(title)
            .font(.subheadline.weight(.semibold))
            .frame(maxWidth: .infinity, alignment: .leading)
    }
}

struct TitleTrailing: View {
    var title = ""
    var body: some View {
        Text(title)
            .font(.subheadline.weight(.semibold))
            .frame(maxWidth: .infinity, alignment: .trailing)
    }
}

struct Content: View {
    var text = ""
    var body: some View {
        Text(text)
            .font(.system(size: 14))
            .frame(maxWidth: .infinity, alignment: .leading)
    }
}

struct ContentTrailing: View {
    var text = ""
    var body: some View {
        Text(text)
            .font(.system(size: 14))
            .frame(maxWidth: .infinity, alignment: .trailing)
    }
}
