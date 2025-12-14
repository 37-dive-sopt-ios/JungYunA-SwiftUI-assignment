//
//  HomeView.swift
//  BaeminSwiftUI
//
//  Created by 정윤아 on 12/12/25.
//

import SwiftUI

struct HomeView: View {
    //사용자 입력에 따라 UI가 변하기 때문에 state 사용
    //검색어 상태를 소유
    @State private var query: String = ""
    
    var body: some View {
        ScrollView (.vertical, showsIndicators: false) {
            
            //섹션이 많기 때문에 보이는 만큼만 생성하는 LazyVStack 사용
            //stickyHeader는 LazyStack에서만 사용가능
            LazyVStack(
                spacing: 0,
                pinnedViews: [.sectionHeaders]
            ){
                TopBar()
                
                //Scroll구조에서 헤더 제공 -> StickyHeader 구현가능
                Section {
                    VStack(spacing: 16) {
                        VStack(spacing: 0) {
                            BmartSection()
                            CategorySection()
                        }
                        MartSection()
                        AdSection()
                        RankingSection()
                    }
                } header: {
                    SearchHeader(query: $query)
                        .background(.white)
                }
            }
        }
        .background(Color.baeminBackgroundWhite)
    }
    
}
