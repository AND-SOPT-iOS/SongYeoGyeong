//
//  TableData.swift
//  seminarSU
//
//  Created by 송여경 on 12/14/24.
//

import SwiftUI

struct TableData: Identifiable {
    
    let id = UUID()
    let appName: String
    let description: String
    let icon: String
    let buttonText: String
    let isAd: Bool
    
}
