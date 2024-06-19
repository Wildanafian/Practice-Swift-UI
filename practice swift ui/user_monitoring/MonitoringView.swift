//
//  MonitoringView.swift
//  practice swift ui
//
//  Created by Wildan on 30/04/24.
//

import SwiftUI

struct MonitoringView: View {
    
    @State private var selectedOption: String? = nil
    @State var isPopUpActive: Bool = false
    private let options = ["Sister", "Brother", "Mother", "Father"]
    
    var body: some View {
        ZStack {
            HStack {
                Spacer().frame(width: 12)
                VStack() {
                    Title(title: Source.project)
                    
                    DropDownPicker(
                        selection: $selectedOption,
                        options: options
                    )
                    
                    Title(title: Source.latestSprint)
                        .padding(.top, 12)
                    
                    Content(text: "Sprint #15, 08/02/2024 - 16/02/2024")
                        .padding(.top, 1)
                    
                    HStack {
                        VStack {
                            Title(title: Source.sprintReview)
                                .padding(.top, 12)
                            Content(text: "16/02/2024")
                                .padding(.top, 1)
                        }
                        
                        VStack(alignment: .trailing) {
                            TitleTrailing(title: Source.sprintRetro)
                                .padding(.top, 12)
                            ContentTrailing(text: "16/02/2024")
                                .padding(.top, 1)
                        }
                    }
                    
                    Title(title: Source.task)
                        .padding(.top, 12)
                    
                    List {
                        ForEach(0..<8, id: \.self) { index in
                            MonitorItemView()
                                .listRowSeparator(.hidden)
                                .onTapGesture {
                                    isPopUpActive.toggle()
                                }
                        }
                    }
                    .listStyle(InsetListStyle())
                    .padding([.leading, .trailing], -12)
                    
                    Spacer()
                }
                Spacer().frame(width: 12)
            }
            
            if isPopUpActive {
                UserMonitorDialog(isActive: $isPopUpActive, action: {})
            }
        }
    }
}

struct MonitoringView_Previews: PreviewProvider {
    static var previews: some View {
        MonitoringView()
    }
}
