//
//  LoginView.swift
//  practice swift ui
//
//  Created by Wildan on 30/04/24.
//

import SwiftUI

struct LoginView: View {
    
    @Binding var isLogin : Bool
    @State private var username = ""
    @State private var password = ""
    
    var body: some View {
        VStack() {
            Image(asset: Asset.imgLogoApp)
                .resizable()
                .scaledToFit()
                .padding()
            
            Title(title: Source.username)
                .padding(.top, 12)
            
            TextField(Source.Hint.inputUsername, text: $username)
                .textFieldStyle(.roundedBorder)
                .frame(height: 36)
            
            Title(title: Source.password)
                .padding(.top, 12)
            
            CustomSecureInputView(Source.Hint.inputPassword, text: $password)
                .textFieldStyle(.roundedBorder)
                .frame(height: 36)
            
            Button(action: {
                isLogin.toggle()
            }) {
                Text(Source.login)
                    .frame(width: 175, height: 36)
                    .bold()
                    .foregroundColor(.white)
                    .background(.orange)
                    .cornerRadius(6)
                
            }
            .padding(.top, 12)
            
            Button(action: {}) {
                Image(asset: Asset.imgGoogleLogin)
                    .resizable()
                    .frame(width: 32, height: 32)
            }
            .padding(.top, 12)
            Spacer()
        }
        .frame(alignment: .top)
        .padding(EdgeInsets(top: 100, leading: 16, bottom: 0, trailing: 16))
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView(isLogin: .constant(false))
    }
}
