//
//  MenuRowView.swift
//  assignments2
//
//  Created by 전시언 on 10/22/26.
//

import SwiftUI

struct MenuRowView: View {
    let id = UUID()
    let teaImage: String
    let teaCategory: String
    var body: some View {
        HStack {
            Image(teaImage)
                .resizable()
                .scaledToFit()
                .frame(width: 61.33, height: 61.33, alignment: .leading)
                .clipShape(Circle())
                .padding(.trailing, 21)
                .padding(.leading, 28)
            
            Text(teaCategory)
                .font(.subhead1)
            
            Spacer()
        }
    }
}

#Preview {
    MenuRowView(teaImage: "tea1", teaCategory: "New")
}
