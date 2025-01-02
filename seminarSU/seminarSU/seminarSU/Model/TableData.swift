//
//  TableData.swift
//  seminarSU
//
//  Created by 송여경 on 12/14/24.
//

import SwiftUI

enum DownloadState {
    case notDownloaded
    case downloaded
}

struct TableData: Identifiable {
    
    let id = UUID()
    let appName: String
    let description: String
    let icon: String
    let DownloadState: DownloadState
    let isAd: Bool
    
}
