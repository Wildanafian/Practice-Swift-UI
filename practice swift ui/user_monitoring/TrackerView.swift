//
//  TrackerView.swift
//  practice swift ui
//
//  Created by Wildan on 30/04/24.
//

import SwiftUI

struct TrackerView: View {
    
    @State private var selectedOption: String? = nil
    @State var isPopUpActive: Bool = false
    let options = ["Sister", "Brother", "Mother", "Father"]
    
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
                        }
                    }
                    .listStyle(InsetListStyle())
                    .padding([.leading, .trailing], -12)
                    
                    Spacer()
                }
                Spacer().frame(width: 12)
            }
            
            if isPopUpActive {
                UserTrackerDialog(isActive: $isPopUpActive, action: {})
            }
        }.edgesIgnoringSafeArea(.bottom)
            .overlay(FloatingButton(isPopUpActive: $isPopUpActive), alignment: .bottomTrailing)
    }
}

struct FloatingButton: View {
    @Binding var isPopUpActive: Bool
    var body: some View {
        Button {
            isPopUpActive.toggle()
        } label: {
            Image(systemName: "plus")
                .font(.title.weight(.semibold))
                .padding()
                .background(.orange)
                .foregroundColor(.white)
                .clipShape(Circle())
        }
        .padding()
    }
}

struct TrackerView_Previews: PreviewProvider {
    static var previews: some View {
        TrackerView()
    }
}
