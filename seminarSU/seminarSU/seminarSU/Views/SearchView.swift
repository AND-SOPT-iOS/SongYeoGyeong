//
//  SearchView.swift
//  seminarSU
//
//  Created by 송여경 on 12/13/24.
//

import SwiftUI

struct SearchView: View {
    @State private var searchText: String = ""
    @ObservedObject var viewModel = SearchTableViewModel()
    @ObservedObject var gridViewModel = SearchGridViewModel()
    
    private var searchBar: some View {
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
    
    private var headerBar: some View {
        HStack {
            Text("검색")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundColor(.white)
            Spacer()
            Image(systemName: "person.circle.fill")
                .resizable()
                .frame(width: 36, height: 36)
                .foregroundColor(.white)
        }
        .padding(.horizontal, 16)
    }
    
    private var recommendedSectionHeader: some View {
        HStack {
            Text("추천 앱과 게임")
                .font(.title2.bold())
                .foregroundColor(.white)
            Spacer()
            Button(action: {}) {
                Text("모두 보기")
                    .font(.title3)
                    .foregroundColor(.blue)
            }
        }
        .padding(.horizontal, 16)
        .padding(.bottom, 8)
    }
    
    private var aroundSectionHeader: some View {
        HStack {
            Text("둘러보기")
                .font(.title2.bold())
                .foregroundColor(.white)
            Spacer()
            Button(action: {}) {
                Text("모두 보기")
                    .font(.title3)
                    .foregroundColor(.blue)
            }
        }
        .padding(.horizontal, 16)
        .padding(.top, 16)
    }
    
    private var gridView: some View {
        LazyVGrid(columns: [GridItem(.flexible()), GridItem(.flexible())], spacing: 16) {
            ForEach(gridViewModel.items) { item in
                SearchGridCell(item: item) {
                    print("\(item.title) 눌렸다!! ㅋㅋ")
                }
            }
        }
        .padding(.horizontal, 16)
        .padding(.top, 10)
    }
    
    var body: some View {
        NavigationView {
            ScrollView {
                VStack(spacing: 0) {
                    ZStack {
                        Color.black
                            .ignoresSafeArea(edges: .top)
                        VStack(spacing: 8) {
                            headerBar
                            searchBar
                        }
                        .frame(height: 140)
                    }
                    VStack(spacing: 0) {
                        recommendedSectionHeader
                        List(viewModel.apps) { app in
                            AppCell(app: app)
                                .frame(maxWidth: .infinity)
                                .padding(3)
                                .listRowInsets(EdgeInsets())
                                .background(Color.black)
                        }
                        .listStyle(PlainListStyle())
                        .frame(height: 220)
                        aroundSectionHeader
                        gridView
                    }
                }
            }
            .background(Color.black.ignoresSafeArea())
            .navigationBarHidden(true)
        }
    }
}

#Preview {
    SearchView()
}
