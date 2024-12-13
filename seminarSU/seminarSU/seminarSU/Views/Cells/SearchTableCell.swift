//
//  SearchTableCell.swift
//  seminarSU
//
//  Created by 송여경 on 12/14/24.
//

import SwiftUI

struct AppCell: View {
    let app: TableData
    
    var body: some View {
        HStack(spacing: 16) {
            Image(app.icon)
                .resizable()
                .frame(width: 50, height: 50)
                .cornerRadius(10)
            
            VStack(alignment: .leading, spacing: 4) {
                Text(app.appName)
                    .font(.headline)
                    .foregroundColor(.white)
                Text(app.description)
                    .font(.subheadline)
                    .foregroundColor(.gray)
                if app.isAd {
                    Text("광고")
                        .font(.caption2)
                        .padding(3)
                        .background(Color.cyan)
                        .foregroundColor(.white)
                        .cornerRadius(4)
                }
            }
            Button(action: {}) {
                Text(app.buttonText)
                    .font(.headline)
                    .padding(8)
                    .frame(width: 70)
                    .background(
                        app.isAd ? Color.black : Color(.systemGray6)
                    )
                    .foregroundColor(.blue)
                    .cornerRadius(16)
            }
        }
        .padding(.horizontal, 10)
        .padding(.vertical, 5)
        .background(
            app.isAd ? Color.blue.opacity(0.2) : Color.clear
        )
        .cornerRadius(15)
    }
    
}

#Preview {
    AppCell(app: TableData(
        appName: "올리브영",
        description: "대한민국 No.1 뷰티&헬스 스토어",
        icon: "oliveyoung",
        buttonText: "열기",
        isAd: true
    ))
}
