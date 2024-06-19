//
//  ContentView.swift
//  practice swift ui
//
//  Created by Wildan on 30/04/24.
//

import SwiftUI

struct ContentView: View {
    
    @State var isLogin = false
    
    var body: some View {
        if !isLogin {
            LoginView(isLogin: $isLogin)
//                .transition(AnyTransition.scale.animation(.easeInOut(duration: 0.3)))
        } else {
            MainTabBarView(isLogin: $isLogin)
//                .transition(AnyTransition.scale.animation(.easeInOut(duration: 0.3)))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
