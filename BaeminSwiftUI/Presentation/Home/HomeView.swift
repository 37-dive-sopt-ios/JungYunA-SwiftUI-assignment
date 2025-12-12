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
                        VStack {
                            Color.clear.frame(height: 1000)
                        }
                    } header: {
                        SearchHeader(query: $query)
                            .background(.white)
                    }
                }
            }
            .background(Color(.systemBackground))
        }
    }
    
}

#Preview {
    HomeView()
}
