//
//  AdSection.swift
//  BaeminSwiftUI
//
//  Created by 정윤아 on 12/14/25.
//

import SwiftUI

struct AdSection: View {
    private let banners = ["banner1", "banner2", "banner3", "banner4"]
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            LazyHStack(spacing: 0) {
                ForEach(banners, id: \.self) {
                    name in
                    VStack {
                        Image(name)
                            .resizable()
                            .scaledToFill()
                            .frame(width: 402, height: 114)
                            .clipped()
                    }
                }
            }
        }
    }
}
