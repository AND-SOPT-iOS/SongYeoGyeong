//
//  SearchGridViewModel.swift
//  seminarSU
//
//  Created by 송여경 on 12/14/24.
//

import SwiftUI

class SearchGridViewModel: ObservableObject {
    @Published var items: [SearchGridModel] = [
        SearchGridModel(
            backgroundColor: [
                Color.blue,
                Color.purple
            ],
            title: "인기 앱",
            icon: "star.fill"
        ),
        SearchGridModel(
            backgroundColor: [
                Color.orange,
                Color.red
            ],
            title: "인기 게임",
            icon: "gamecontroller.fill"
        ),
        SearchGridModel(
            backgroundColor: [
                Color.purple,
                Color.blue
            ],
            title: "소셜 네트워킹",
            icon: "bubble.left.and.bubble.right.fill"
        ),
        SearchGridModel(
            backgroundColor: [
                Color.yellow,
                Color.orange
            ],
            title: "사진 및 비디오",
            icon: "camera.fill"
        ),
        SearchGridModel(
            backgroundColor: [
                Color.blue,
                Color.gray
            ],
            title: "새로운 앱",
            icon: "paperplane.fill"
        ),
        SearchGridModel(
            backgroundColor: [
                Color.pink,
                Color.orange
            ],
            title: "라이프 스타일",
            icon: "chair.fill"
        ),
        SearchGridModel(
            backgroundColor: [
                Color.green,
                Color.blue
            ],
            title: "건강과 피트니스",
            icon: "figure.walk"
        ),
        SearchGridModel(
            backgroundColor: [
                Color.red,
                Color.pink
            ],
            title: "음악",
            icon: "music.note"
        ),
        SearchGridModel(
            backgroundColor: [
                Color.cyan,
                Color.teal
            ],
            title: "교육",
            icon: "book.fill"
        ),
        SearchGridModel(
            backgroundColor: [
                Color.indigo,
                Color.mint
            ],
            title: "여행",
            icon: "airplane"
        )
    ]
}
