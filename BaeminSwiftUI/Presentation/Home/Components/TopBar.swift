//
//  TopBar.swift
//  BaeminSwiftUI
//
//  Created by 정윤아 on 12/12/25.
//

import SwiftUI

struct TopBar: View {
    var body: some View {
        HStack(spacing: 12) {
            HStack(spacing: 3) {
                Text("우리집")
                    .font(.bold16)
                Image("down")
            }

            Spacer()

            Image("ad")
            Image("alarm")
            Image("cart")
        }
        .padding(.horizontal, 16)
        .padding(.vertical, 9)
        .background(.white)
    }
}
