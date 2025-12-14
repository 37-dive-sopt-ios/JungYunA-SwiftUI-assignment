//
//  HomeView.swift
//  BaeminSwiftUI
//
//  Created by 정윤아 on 12/12/25.
//

import SwiftUI

struct HomeView: View {
    @State private var query: String = ""
    
    var body: some View {
        VStack(spacing: 0) {
            
            ScrollView {
                LazyVStack(
                    spacing: 0,
                    pinnedViews: [.sectionHeaders]
                ){
                    TopBar()
                    
                    Section {
                        VStack(spacing: 16) {
                            BmartSection()
                            CategorySection()
                            MartSection()
                            AdSection()
                        }
                    } header: {
                        SearchHeader(query: $query)
                            .background(.white)
                    }
                }
            }
            .background(Color.gray)
        }
    }
    
}

#Preview {
    HomeView()
}
