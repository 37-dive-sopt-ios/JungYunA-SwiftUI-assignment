//
//  BmartSection.swift
//  BaeminSwiftUI
//
//  Created by 정윤아 on 12/13/25.
//

import SwiftUI

struct BmartSection: View {
    var body: some View {
        
        VStack(alignment: .leading, spacing: 6){
            Image("Bmart")
            Text("전상품 쿠폰팩 + 60%특가 >")
                .font(.bold16)
        }
        .padding(.leading, 16)
        .padding(.top, 24)
        .frame(maxWidth: .infinity, alignment: .leading)
    }
}
