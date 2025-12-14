//
//  RankingSection.swift
//  BaeminSwiftUI
//
//  Created by 정윤아 on 12/14/25.
//

import SwiftUI

struct RankingSection: View {
    
    private let items: [RankingItem] = [
            .init(store: "백억보쌈제육식당", rating: 5.0, reviews: 1973,
                  title: "[든든한 한끼] 보쌈 막국수", discountPercent: 25,
                  salePrice: 12000, originalPrice: 16000, badge: "최소주문금액 없음"),
            .init(store: "백억보쌈제육식당", rating: 5.0, reviews: 1973,
                  title: "(1인) 피자 + 사이드 Set", discountPercent: 20,
                  salePrice: 12000, originalPrice: 16000, badge: "최소주문금액 없음"),
            .init(store: "마라탕탕후루후루", rating: 5.0, reviews: 1973,
                  title: "[든든한 한끼] 보쌈 막국수", discountPercent: 25,
                  salePrice: 12000, originalPrice: 16000, badge: "최소주문금액 없음"),
            .init(store: "마라탕탕후루후루", rating: 5.0, reviews: 1973,
                  title: "[든든한 한끼] 보쌈 막국수", discountPercent: 25,
                  salePrice: 12000, originalPrice: 16000, badge: "최소주문금액 없음"),
            .init(store: "마라탕탕후루후루", rating: 5.0, reviews: 1973,
                  title: "[든든한 한끼] 보쌈 막국수", discountPercent: 25,
                  salePrice: 12000, originalPrice: 16000, badge: "최소주문금액 없음")
        ]
    
    var body: some View {
            
            ZStack(alignment: .topLeading) {
                LinearGradient(colors: [Color(red: 114/255, green: 118/255, blue: 1.0),
                                        Color(red: 1, green: 1, blue: 1)], startPoint: .top, endPoint: .bottom)
                .frame(height: 200)
                
                HStack{
                    HStack(spacing: 6) {
                        Text("우리 동네 한그릇 인기 랭킹")
                            .font(.semiBold18)
                            .foregroundStyle(.white)
                        Image("info_white")
                            .frame(width: 16, height: 16)
                    }
                    
                    Spacer()
                    
                    Button(action: {}) {
                            Text("전체보기 >")
                        .font(.regular14)
                        .foregroundStyle(.white)
                    }
                }
                .padding(.top, 24)
                .padding(.horizontal, 16)
                
                ScrollView(.horizontal, showsIndicators: false) {
                    LazyHStack(spacing: 10) {
                        ForEach(items) { item in
                            RankingCard(item: item)
                        }
                    }
                    .padding(.horizontal, 16)
                    .padding(.top, 60)
                    .padding(.bottom, 20)
                }
                .scrollClipDisabled()
            }
            .frame(height: 390)
                
        .background(Color.white)
    }
}
