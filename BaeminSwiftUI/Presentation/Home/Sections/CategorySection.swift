//
//  CategorySection.swift
//  BaeminSwiftUI
//
//  Created by 정윤아 on 12/14/25.
//

import SwiftUI

struct CategorySection: View {
    private let items = ["한그릇","치킨","카페·디저트","피자","분식","고기","찜·탕","야식","패스트푸드","픽업"]
    
    var body: some View {
        VStack {
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 10) {
                    TabItem(title: "음식배달", selected: true)
                    TabItem(title: "픽업", selected: false)
                    TabItem(title: "장보기·쇼핑", selected: false)
                    TabItem(title: "선물하기", selected: false)
                    TabItem(title: "혜택모아보기", selected: false)
                }
                .padding(.init(top: 1, leading: 16, bottom: 0, trailing: 16))
            }
            
            Divider()
            
            LazyVGrid(columns: Array(repeating: .init(.flexible(), spacing: 10), count: 5), spacing: 12) {
                ForEach(items, id: \.self) {
                    title in
                    VStack(spacing: 6) {
                        RoundedRectangle(cornerRadius: 20)
                            .fill(Color.gray)
                            .frame(height: 58)
                        Text(title)
                            .font(.regular14)
                            .frame(width: 80)
                            
                    }
                }
            }
            .padding(.init(top: 12, leading: 16, bottom: 21, trailing: 16))
            
            Divider()
            
            Button(action: {}) {
                HStack(spacing: 6) {
                    Text("음식배달에서 더보기 >")
                }
                .font(.regular14)
                .foregroundStyle(.primary)
                .frame(maxWidth: .infinity)
                .padding(.vertical, 10)
            }
        }
        .background(.white)
        .clipShape(RoundedRectangle(cornerRadius: 16))
        .padding(.horizontal, 16)
    }
}
