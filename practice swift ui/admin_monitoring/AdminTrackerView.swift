//
//  TrackerView.swift
//  practice swift ui
//
//  Created by Wildan on 30/04/24.
//

import SwiftUI

struct AdminTrackerView: View {
    
    @State private var selectedOption: String? = nil
    @State private var isShowingPopup: Bool = false
    private let options = ["Sister", "Brother", "Mother", "Father"]
    
    var body: some View {
        ZStack {
            HStack {
                Spacer().frame(width: 12)
                VStack() {
                    Title(title: Source.chooseDate)
                    
                    DropDownPicker(
                        selection: $selectedOption,
                        options: options
                    )
                    
                    List {
                        ForEach(0..<8, id: \.self) { index in
                            TrackerItemView()
                                .listRowSeparator(.hidden)
                                .onTapGesture {
                                    isShowingPopup.toggle()
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
}

struct AdminTrackerView_Previews: PreviewProvider {
    static var previews: some View {
        AdminTrackerView()
    }
}
