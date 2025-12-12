//
//  SearchHeader.swift
//  BaeminSwiftUI
//
//  Created by 정윤아 on 12/12/25.
//

import SwiftUI

struct SearchHeader: View {
    @Binding var query: String
    
    var body: some View {
        VStack(spacing: 0) {
            
            HStack(spacing: 10) {
                TextField("찾아라! 맛있는 음식과 맛집", text: $query)
                    .font(.regular14)
                    .textFieldStyle(.plain)
                    .textInputAutocapitalization(.never)
                
                Image("search")
                    .foregroundStyle(.secondary)
            }
            .padding(.horizontal, 16)
            .padding(.vertical, 12)
            .background(
                RoundedRectangle(cornerRadius: 24)
                    .stroke(Color(.systemGray4), lineWidth: 1)
                    .background(
                        RoundedRectangle(cornerRadius: 24)
                            .fill(.white)
                    )
            )
            .padding(.horizontal, 16)
            .padding(.vertical, 10)

            Divider()
        }
    }
}
