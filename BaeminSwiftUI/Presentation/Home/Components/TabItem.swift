//
//  TabItem.swift
//  BaeminSwiftUI
//
//  Created by 정윤아 on 12/14/25.
//

import SwiftUI

struct TabItem: View {
    let title: String
    let selected: Bool
    let onTap: () -> Void // 이 탭이 눌렸을 때 실행할 동작을 외부에서 주입 받음
    
    var body: some View {
        Button(action: onTap) {
            VStack(spacing: 10) {
                Text(title)
                    .font(.semiBold18)
                    .foregroundColor(selected ? .primary: .secondary) //선택되면 강조, 아니면 덜 중요함
                
                Rectangle()
                    .fill(selected ? Color.black : Color.clear)
                    .frame(height: 3)
                
            }
            .padding(.init(top: 15, leading: 3.5, bottom: 0, trailing: 3.5))
        }
        .buttonStyle(.plain)
    }
}
