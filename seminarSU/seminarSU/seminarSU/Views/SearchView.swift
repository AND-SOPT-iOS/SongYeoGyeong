//
//  SearchView.swift
//  seminarSU
//
//  Created by 송여경 on 12/13/24.
//

import SwiftUI

struct SearchView: View {
    @State private var searchBarHeight: CGFloat = 60
    @State private var isScrolled: Bool = false
    @State private var searchText: String = ""

    var body: some View {
        VStack(spacing: 0) {
            ZStack {
                Color.black
                    .ignoresSafeArea(edges: .top)
                VStack(spacing: 8) {
                    HStack {
                        Text("검색")
                            .font(isScrolled ? .headline : .largeTitle)
                            .fontWeight(.semibold)
                            .foregroundColor(.white)
                        Spacer()
                        Image(systemName: "person.circle.fill")
                            .resizable()
                            .frame(width: isScrolled ? 24 : 36, height: isScrolled ? 24 : 36)
                            .foregroundColor(.white)
                    }
                    .padding(.horizontal, 16)
                    
                    HStack {
                        Image(systemName: "magnifyingglass")
                            .foregroundColor(.gray)
                        
                        ZStack(alignment: .leading) {
                            if searchText.isEmpty {
                                Text("게임, 앱, 스토리 등")
                                    .foregroundColor(.gray)
                            }
                            TextField("", text: $searchText)
                                .foregroundColor(.white)
                                .textFieldStyle(PlainTextFieldStyle())
                        }
                        Spacer()
                        Image(systemName: "mic.fill")
                            .foregroundColor(.gray)
                    }
                    .padding(10)
                    .background(
                        RoundedRectangle(cornerRadius: 10)
                            .fill(Color(.systemGray).opacity(0.3))
                    )
                    .padding(.horizontal, 16)
                }
                .frame(height: searchBarHeight)
                .animation(.easeInOut, value: isScrolled)
            }
        }
        .background(Color.black.ignoresSafeArea())
    }
}

struct ScrollOffsetPreferenceKey: PreferenceKey {
    static var defaultValue: CGFloat = 0
    static func reduce(value: inout CGFloat, nextValue: () -> CGFloat) {
        value = nextValue()
    }
}

#Preview {
    SearchView()
}
