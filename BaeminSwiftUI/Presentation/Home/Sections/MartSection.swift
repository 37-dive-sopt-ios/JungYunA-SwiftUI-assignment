//
//  MartSection.swift
//  BaeminSwiftUI
//
//  Created by 정윤아 on 12/14/25.
//

import SwiftUI

struct MartSection: View {
    private let marts = ["B마트","CU","이마트슈퍼","홈플러스","GS25","세븐일레븐"]
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 9) {
                ForEach(marts, id: \.self) { name in
                    VStack(spacing: 6) {
                        RoundedRectangle(cornerRadius: 20)
                            .fill(Color.gray)
                            .frame(height: 54)
                            .frame(width: 54)
                        Text(name)
                            .font(.regular14)
                            .frame(width: 62)
                    }
                }
            }
        }
        .padding(.leading, 16)
        .padding(.vertical, 10)
        .background(.white)
    }
}
