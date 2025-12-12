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
            HStack(spacing: 4) {
                Text("우리집")
                    .font(.title3.bold())
                Image("down")
                    .font(.footnote.weight(.semibold))
            }

            Spacer()

            Image("ad")
                .foregroundStyle(.purple)
            Image("alarm")
            Image("cart")
        }
        .font(.title3)
        .padding(.horizontal, 16)
        .padding(.vertical, 10)
        .background(.white)
    }
}
