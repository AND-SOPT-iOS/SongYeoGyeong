//
//  SearchGridCell.swift
//  seminarSU
//
//  Created by 송여경 on 12/14/24.
//

import SwiftUI

struct SearchGridCell: View {
    let item: SearchGridModel
    
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: item.backgroundColor), startPoint: .top, endPoint: .bottom)
                .cornerRadius(10)
                .shadow(color: .black.opacity(0.2), radius: 4, x: 0, y: 2)
            HStack {
                Spacer()
                Image(systemName: item.icon)
                    .font(.system(size: 60))
                    .foregroundColor(.white)
                    .padding(.trailing, 35)
                    .padding(.bottom, 15)
            }
            VStack {
                Spacer()
                HStack {
                    Text(item.title)
                        .font(.title.bold())
                        .foregroundColor(.white)
                        .padding([.leading, .bottom], 15)
                    Spacer()
                }
            }
        }
        .aspectRatio(contentMode: .fit)
    }
}

#Preview {
    SearchGridCell(item: SearchGridModel(
        backgroundColor: [
            Color.orange,
            Color.red
        ],
        title: "인기 게임",
        icon: "gamecontroller.fill"
    ))
}
