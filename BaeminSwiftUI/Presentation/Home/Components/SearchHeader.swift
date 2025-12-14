//
//  SearchHeader.swift
//  BaeminSwiftUI
//
//  Created by 정윤아 on 12/12/25.
//

import SwiftUI

struct SearchHeader: View {
    //searchHeader에서의 query를 부모 뷰(HomeView)에게 전달
    @Binding var query: String
    
    var body: some View {
        VStack(spacing: 0) {
            
            HStack(spacing: 10) {
                TextField("찾아라! 맛있는 음식과 맛집", text: $query)
                    .font(.regular14)
                    .textFieldStyle(.plain) //swiftUI의 기본 textField 스타일 제거(테두리, 배경)
                    .textInputAutocapitalization(.never) //iOS 키보드가 제공하는 자동 대문자화 제거
                
                Image("search")
                    .foregroundStyle(.secondary) //텍스트, 아이콘의 색 스타일 -> secondary는 메인 컨텐츠보다 덜 중요한 요소임을 나타냄
            }
            .padding(.horizontal, 16)
            .padding(.vertical, 12)
            .background(
                //테두리
                RoundedRectangle(cornerRadius: 50)
                    .stroke(Color(.black), lineWidth: 1)
                    .background(
                        //배경 둥근 네모
                        RoundedRectangle(cornerRadius: 50)
                            .fill(.white)
                    )
            )
            .padding(.horizontal, 16)
            .padding(.vertical, 10)
            
        }
    }
}
