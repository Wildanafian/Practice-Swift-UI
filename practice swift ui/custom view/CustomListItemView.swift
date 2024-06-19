//
//  CustomListItemView.swift
//  practice swift ui
//
//  Created by Wildan on 30/04/24.
//

import SwiftUI

struct MonitorItemView: View {
    var body: some View {
        VStack {
                Title(title: "Implement UI Login")
                .padding(EdgeInsets(top: 12, leading: 12, bottom: 2, trailing: 12))
                HStack {
                    Content(text: "Est : 8 Hours")
                    Spacer()
                    ContentTrailing(text: "On Progress")
                        .foregroundStyle(.green)
                }.padding(EdgeInsets(top: 0, leading: 12, bottom: 12, trailing: 12))
        }
        .background(.orange.opacity(0.2))
        .cornerRadius(12)
    }
}

struct AdminMonitorItemView: View {
    var body: some View {
        HStack {
            VStack {
                    Title(title: "Patrick")
                    .padding(EdgeInsets(top: 12, leading: 12, bottom: 2, trailing: 12))
                    Content(text: "BNI Qris, Specva, BDKI")
                    .lineLimit(2)
                    .padding(EdgeInsets(top: -6, leading: 12, bottom: 12, trailing: 6))
            }
            Image(systemName: "chevron.right")
                .frame(width: 24)
                .padding(.trailing, 6)
                .foregroundColor(.orange)
                
        }
        .background(.orange.opacity(0.2))
        .cornerRadius(12)
    }
}


struct TrackerItemView: View {
    var title = ""
    var content = ""
    var body: some View {
        VStack {
                Title(title: "Guild")
                .padding(EdgeInsets(top: 12, leading: 12, bottom: 2, trailing: 12))
                Content(text: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin sem.d")
                .lineLimit(2)
                .padding(EdgeInsets(top: -6, leading: 12, bottom: 12, trailing: 12))
        }
        .background(.orange.opacity(0.2))
        .cornerRadius(12)
    }
}
