//
//  ProductListView.swift
//  assignments2
//
//  Created by 전시언 on 10/24/26.
//

import SwiftUI

struct ProductListView: View {
    var body: some View {
        VStack(alignment: .leading){
            
            Rectangle()
                .frame(height: 1)
                .foregroundStyle(.gray5)
                .padding(.bottom, 18)
            
            HStack {
                Text("음료")
                    .padding(.leading, 42)
                Text("푸드")
                    .foregroundStyle(.gray2)
                    .padding(.leading, 28)
                Text("상품")
                    .foregroundStyle(.gray2)
                    .padding(.leading, 28)
                
                Spacer()
            }
            .font(.cap4)
            .padding(.bottom, 14)
            .overlay(alignment: .bottom){
                Rectangle()
                    .frame(height: 1)
                    .foregroundStyle(.gray5)
            }
        }
        
    }
}

#Preview {
    ProductListView()
}
