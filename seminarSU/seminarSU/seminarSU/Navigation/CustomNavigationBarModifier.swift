////
////  CustomNavigationBarModifier.swift
////  seminarSU
////
////  Created by 송여경 on 12/13/24.
////
//
//import SwiftUI
//
//struct CustomNavigationBarModifier<T, G, A, C, S>: ViewModifier where T : View, G : View, A : View, C : View, S : View {
//    let todayView: (() -> T)?
//    let gameView: (() -> G)?
//    let appView: (() -> A)?
//    let ArcadeView: (() -> C)?
//    let SearchView: (() -> S)?
//    
//    init(todayView: (() -> T)? = nil, gameView: (() -> G)? = nil, appView: (() -> A)? = nil, ArcadeView: (() -> C)? = nil, SearchView: (() -> S)? = nil) {
//        self.todayView = todayView
//        self.gameView = gameView
//        self.appView = appView
//        self.ArcadeView = ArcadeView
//        self.SearchView = SearchView
//    }
//    
//    func body(content: Content) -> some View {
//        VStack {
//            ZStack {
//                HStack {
//                    self.todayView?()
//                    
//                    Spacer()
//                    
//                    self.gameView?()
//                }
//            }
//        }
//    }
//}
