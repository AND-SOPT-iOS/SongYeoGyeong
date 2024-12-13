//
//  ContentView.swift
//  seminarSU
//
//  Created by 송여경 on 12/10/24.
//

import SwiftUI

struct ContentView: View {
    
    init() {
        let appearance = UITabBarAppearance()
        appearance.configureWithOpaqueBackground()
        appearance.backgroundEffect = UIBlurEffect(style: .systemUltraThinMaterialDark)
        appearance.backgroundColor = nil
        appearance.shadowColor = .clear
        
        UITabBar.appearance().standardAppearance = appearance
        UITabBar.appearance().scrollEdgeAppearance = appearance
        
        let navigationBarAppearance = UINavigationBarAppearance()
        navigationBarAppearance.configureWithOpaqueBackground()
        UINavigationBar.appearance().scrollEdgeAppearance = navigationBarAppearance
    }
    
    var body: some View {
        TabView {
            TodayView()
                .tabItem {
                    Image(systemName: "text.rectangle.page")
                    Text("투데이")
                }
            GameView()
                .ignoresSafeArea()
                .tabItem {
                    Image(systemName: "chandelier")
                    Text("게임")
                }
            AppView()
                .tabItem {
                    Image(systemName: "rectangle.stack.person.crop")
                    Text("앱")
                }
            ArcadeView()
                .tabItem {
                    Image(systemName: "arcade.stick")
                    Text("Arcade")
                }
            SearchView()
                .tabItem {
                    Image(systemName: "magnifyingglass")
                    Text("검색")
                }
        }
    }
}

#Preview {
    ContentView()
}
