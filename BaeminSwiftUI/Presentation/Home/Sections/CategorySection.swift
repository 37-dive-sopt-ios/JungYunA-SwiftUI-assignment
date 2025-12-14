//
//  CategorySection.swift
//  BaeminSwiftUI
//
//  Created by 정윤아 on 12/14/25.
//

import SwiftUI

struct CategorySection: View {
    private let items = ["한그릇","치킨","카페·디저트","피자","분식","고기","찜·탕","야식","패스트푸드","픽업"]
    private let tabs = ["음식배달", "픽업", "장보기·쇼핑", "선물하기", "혜택모아보기"]
    @State private var selectedTab: String = "음식배달"
    
    var body: some View {
        VStack {
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 10) {
                    ForEach(tabs, id: \.self) { title in
                        TabItem(
                            title: title,
                            selected: selectedTab == title
                        ) {
                            selectedTab = title
                        }
                    }
                }
                .padding(.horizontal, 16)
                .padding(.top, 1)
            }
            
            Divider()
            
            LazyVGrid(columns: Array(repeating: .init(.flexible(), spacing: 10), count: 5), spacing: 12) {
                ForEach(items, id: \.self) {
                    title in
                    VStack(spacing: 6) {
                        RoundedRectangle(cornerRadius: 20)
                            .fill(Color.gray)
                            .frame(height: 58)
                            .frame(width: 58)
                        
                        Text(title)
                            .font(.regular14)
                            .frame(width: 68)
                        
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
                .foregroundStyle(Color.baeminBlack)
                .frame(maxWidth: .infinity)
                .padding(.vertical, 10)
            }
        }
        .background(.white)
    }
}
