//
//  CustomDialog.swift
//  practice swift ui
//
//  Created by Wildan on 02/05/24.
//

import SwiftUI

struct UserMonitorDialog: View {
    @Binding var isActive: Bool
    let action: () -> ()
    @State private var offset: CGFloat = 1000
    @State private var selectedOption: String? = nil
    @State private var actualHours = ""
    @State private var comment = ""
    let options = ["Backlog", "Sprint", "Retro"]
    
    var body: some View {
        ZStack {
            Color(.black)
                .opacity(0.5)
                .onTapGesture {
                    close()
                }
            
            VStack {
                Title(title: "Status")
                    .padding(.top, 12)
                
                DropDownPicker(
                    selection: $selectedOption,
                    options: options
                )
                
                Title(title: "Actual Hours")
                    .padding(.top, 16)
                
                TextField("Masukkan waktu", text: $actualHours)
                    .textFieldStyle(.roundedBorder)
                    .autocorrectionDisabled(true)
                
                Title(title: "Notes")
                    .padding(.top, 16)
                
                TextEditor(text:  $comment)
                    .frame(minHeight: 100, idealHeight: 150, maxHeight: 200)
                    .overlay(
                        RoundedRectangle(cornerRadius: 12)
                            .stroke(Color.gray.opacity(0.25), lineWidth: 1)
                    )
                
                HStack {
                    Spacer()
                    Button(action: {
                        action()
                        close()
                    }) {
                        Text("Cancel")
                            .padding(.vertical, 8)
                            .padding(.horizontal, 18)
                            .bold()
                            .background(.orange.opacity(0.25))
                            .roundedCornerWithBorder(lineWidth: 1, borderColor: .orange, radius: 8, corners: [.allCorners])
                            .foregroundColor(.orange)
                            .cornerRadius(8)
                    }
                    Spacer()
                    Button(action: {
                        action()
                        close()
                    }) {
                        Text("Update")
                            .padding(.vertical, 8)
                            .padding(.horizontal, 18)
                            .bold()
                            .foregroundColor(.white)
                            .background(.orange)
                            .cornerRadius(8)
                    }
                    Spacer()
                }.padding([.top, .bottom], 12)
            }
            .fixedSize(horizontal: false, vertical: true)
            .padding()
            .background(.white)
            .clipShape(RoundedRectangle(cornerRadius: 20))
            .shadow(radius: 20)
            .padding(30)
            .offset(x: 0, y: offset)
            .onAppear {
                withAnimation(.spring()) {
                    offset = 0
                }
            }
        }
        .ignoresSafeArea()
    }
    
    func close() {
        withAnimation(.spring()) {
            offset = 1000
            isActive = false
        }
    }
}

struct CustomDialog_Previews: PreviewProvider {
    static var previews: some View {
        UserMonitorDialog(isActive: .constant(true), action: {})
    }
}
