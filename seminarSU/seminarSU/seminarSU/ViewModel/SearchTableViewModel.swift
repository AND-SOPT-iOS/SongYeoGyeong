//
//  SearchTableViewModel.swift
//  seminarSU
//
//  Created by 송여경 on 12/14/24.
//

import SwiftUI

class SearchTableViewModel: ObservableObject {
    
    @Published var apps: [TableData] = [
        TableData(
            appName: "올리브영",
            description: "대한민국 No.1 뷰티&헬스 스토어",
            icon: "oliveyoung",
            DownloadState: .downloaded,
            isAd: true
        ),
        
        TableData(
            appName: "Rummikub",
            description: "사람들을한데 모으기",
            icon: "Rumicube",
            DownloadState: .downloaded,
            isAd: false
        ),
        
        TableData(
            appName: "전략적 팀 전투",
            description: "판타지 오토 배틀러",
            icon: "leagueoflegend",
            DownloadState: .notDownloaded,
            isAd: false
        )
    ]
    
}
