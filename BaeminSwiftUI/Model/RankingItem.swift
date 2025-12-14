//
//  RankingItem.swift
//  BaeminSwiftUI
//
//  Created by 정윤아 on 12/14/25.
//

import Foundation

struct RankingItem: Identifiable {
    let id = UUID()
    let store: String
    let rating: Double
    let reviews: Int
    let title: String
    let discountPercent: Int
    let salePrice: Int
    let originalPrice: Int
    let badge: String
}
