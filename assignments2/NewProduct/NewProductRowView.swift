//
//  NewProductRowView.swift
//  assignments2
//
//  Created by 전시언 on 10/23/26.
//

import SwiftUI

struct NewProductRowView: View {
    let id = UUID()
    let teaImage: String
    let teaName: String
    let teaInfo: String
    let teaPrice: String
    
    var body: some View {
        VStack {
            HStack{
                Image(teaImage)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 100, height: 100, alignment: .leading)
                    .clipShape(Circle())
                    .padding(.trailing, 12)
                    .padding(.leading, 21)
                VStack(alignment: .leading){
                    Text(teaName)
                        .font(.subhead1)
                        .padding(.bottom, 4)
                    Text(teaInfo)
                        .font(.cap2)
                        .foregroundStyle(.gray1)
                        .padding(.bottom, 10)
                    Text(teaPrice)
                        .font(.subhead1)
                }
                
                Spacer()
                
            }
        }
    }
}

#Preview {
    NewProductRowView(teaImage: "tea6", teaName: "아이스", teaInfo: "ice masdadead", teaPrice: "6,700원")
}
