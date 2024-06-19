//
//  MainTabBarView.swift
//  practice swift ui
//
//  Created by Wildan on 30/04/24.
//

import SwiftUI

struct MainTabBarView: View {
    @Binding var isLogin : Bool
    var body: some View {
        TabView {
            Group{
                MonitoringView()
                    .tabItem{
                        Image(systemName: "desktopcomputer")
                        Text("Monitoring")
                    }
                
                TrackerView()
                    .tabItem{
                        Image(systemName: "list.bullet.clipboard")
                        Text("Tracker")
                    }
            }
            .toolbarBackground(.orange.opacity(0.2), for: .tabBar)
            .toolbarBackground(.visible, for: .tabBar)
        }
        .accentColor(.orange)
        .overlay(
            Image(systemName: "ellipsis.circle")
                .padding(.trailing, 12)
                .foregroundColor(.gray)
                .onTapGesture {
                    isLogin.toggle()
                }
            , alignment: .topTrailing
        )
    }
}

struct MainTabBarView_Previews: PreviewProvider {
    static var previews: some View {
        MainTabBarView(isLogin: .constant(true))
    }
}
