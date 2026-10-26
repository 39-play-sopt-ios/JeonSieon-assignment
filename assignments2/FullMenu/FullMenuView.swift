//
//  FullMenuView.swift
//  assignments2
//
//  Created by 전시언 on 10/22/26.
//

import SwiftUI

struct FullMenuView: View {
    @State private var teaModel = FullMenuViewModel()
    
    var body: some View {
        List {
            ForEach(teaModel.ListMenu) { post in
                Group {
                    if post.teaImage == "tea1" {
                        NavigationLink {
                            NewProductView()
                        } label: {
                            MenuRowView(teaImage: post.teaImage, teaCategory: post.teaCategory)
                        }
                    }
                    else {
                        MenuRowView(teaImage: post.teaImage, teaCategory: post.teaCategory)
                    }
                }
                .listRowBackground(Color.white)
                .listRowSeparator(.hidden)
            }
        }
        .listStyle(.plain)
        .scrollContentBackground(.hidden)
        .background(Color.white.ignoresSafeArea())
    }
}

#Preview {
    FullMenuView()
}
