//
//  NewProductView.swift
//  assignments2
//
//  Created by 전시언 on 10/22/26.
//

import SwiftUI

struct NewProductView: View {
    @State private var newProductModel = NewProductViewModel()
    
    var body: some View {
        VStack{
            Text("NEW")
                .font(.head4)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.bottom, 28)
                .padding(.leading, 18)
            
            List{
                ForEach(newProductModel.listNewProduct)
                { post in
                    
                    NavigationLink(value: post) {
                        NewProductRowView(teaImage: post.teaImage, teaName: post.teaName, teaInfo: post.teaInfo, teaPrice: post.teaPrice)
                    }
                }
                .listRowBackground(Color.white)
                .listRowSeparator(.hidden)
            }
            .listStyle(.plain)
            .scrollContentBackground(.hidden)
            .background(Color.white.ignoresSafeArea())
        }
    }
}

#Preview {
    NewProductView()
}
