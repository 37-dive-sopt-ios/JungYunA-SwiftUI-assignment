//
//  RankingCard.swift
//  BaeminSwiftUI
//
//  Created by 정윤아 on 12/14/25.
//

import SwiftUI

struct RankingCard: View {
    let item: RankingItem
    
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            
            RoundedRectangle(cornerRadius: 8)
                .fill(Color.gray)
                .frame(width: 145, height: 145)
                .overlay(
                    EmptyView() // 나중에 이미지 올릴 때 사용
                )
            
            HStack(spacing: 4) {
                Text(item.store)
                    .font(.regular12)
                    .foregroundStyle(.secondary)
                
                Image("star")
                    .frame(width: 11, height: 10)
                
                Text(String(format: "%.1f", item.rating))
                    .font(.regular12)
                    .foregroundStyle(.secondary)
                
                Text("(\(item.reviews.formatted())") //formatted -> 천 단위에 ,
                    .font(.regular12)
                    .foregroundStyle(.secondary)
            }
            .lineLimit(1)
            
            Text(item.title)
                .font(.regular14)
                .foregroundStyle(.primary)
                .lineLimit(2)
            
            HStack(spacing: 6) {
                Text("\(item.discountPercent)%")
                    .font(.bold14)
                    .foregroundStyle(.red)
                
                Text("\(item.salePrice.formatted())원")
                    .font(.bold14)
                    .foregroundStyle(.primary)
            }
            
            Text("\(item.originalPrice.formatted())원")
                .font(.regular12)
                .foregroundStyle(.secondary)
                .strikethrough()
            
            Text(item.badge)
                .font(.bold13)
                .foregroundStyle(.blue)
            
            Spacer()
        }
        .frame(width: 145, height: 243)
    }
}
