//
//  MonitoringView.swift
//  practice swift ui
//
//  Created by Wildan on 30/04/24.
//

import SwiftUI

struct AdminMonitoringView: View {
   
    @State private var selectedOption: String? = nil
    @State private var chipSelected: String? = "Engineer"
    private let options = ["January", "February", "March", "April"]
    private let projectFilter = ["Engineer", "Project"]
    
    var body: some View {
        HStack {
            Spacer().frame(width: 12)
            VStack() {
                HStack {
                    ForEach(projectFilter, id: \.self) {data in
                        ChipView(text: data, isSelected: self.$chipSelected)
                        .padding(.horizontal, 12)                               }
                }
                
                Title(title: Source.dateFilter)
                
                DropDownPicker(
                    selection: $selectedOption,
                    options: options
                )
                
                List {
                    ForEach(0..<8, id: \.self) { index in
                        AdminMonitorItemView()
                            .listRowSeparator(.hidden)
                            .onTapGesture {
                                withAnimation() {
                                }
                            }
                    }
                }
                .listStyle(InsetListStyle())
                .padding([.leading, .trailing], -12)
                
                Spacer()
            }
            Spacer().frame(width: 12)
        }
    }
}

struct AdminMonitoringView_Previews: PreviewProvider {
    static var previews: some View {
        AdminMonitoringView()
    }
}
