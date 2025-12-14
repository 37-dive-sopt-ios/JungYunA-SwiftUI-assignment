//
//  BmartSection.swift
//  BaeminSwiftUI
//
//  Created by 정윤아 on 12/13/25.
//

import SwiftUI

struct BmartSection: View {
    var body: some View {
        ZStack(alignment: .leading) {
            LinearGradient(
                colors: [
                    Color.baeminMint300,
                    Color.white
                ],
                startPoint: .bottom,
                endPoint: .top
            )
            
            VStack(alignment: .leading, spacing: 6){
                Image("Bmart")
                Text("전상품 쿠폰팩 + 60%특가 >")
                    .font(.bold16)
            }
            .padding(.leading, 16)
            .padding(.top, 24)
            .padding(.bottom, 27)
        }
        .frame(maxWidth: .infinity, alignment: .leading)
    }
}
