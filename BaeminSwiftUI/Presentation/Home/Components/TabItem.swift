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
    
    var body: some View {
        VStack(spacing: 6) {
            Text(title)
                .font(.semiBold18)
                .foregroundColor(selected ? .primary: .secondary)
            
            Rectangle()
                .fill(selected ? Color.black : Color.clear)
                .frame(height: 3)
            
        }
        .padding(.init(top: 15, leading: 0, bottom: 0, trailing: 0))
    }
}
