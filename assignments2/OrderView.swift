//
//  SelectView.swift
//  assignments2
//
//  Created by 전시언 on 10/23/26.
//

import SwiftUI

enum SelectType: String {
    case fullMenu = "전체 메뉴"
    case ownMenu = "나만의 메뉴"
}


struct OrderView: View {
    @State private var isLiked = false
    @State private var selected: SelectType = .fullMenu
    
    var body: some View {
        NavigationStack {
            VStack(spacing: 0) {
                Text("Order")
                    .font(.head4)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.bottom, 14)
                    .padding(.leading, 18)

                HStack {
                    Button {
                        selected = .fullMenu
                    } label: {
                        Text("전체 메뉴")
                            .frame(width: 130, height: 46)
                            .overlay(alignment: .bottom) {
                                if selected == .fullMenu {
                                    Rectangle()
                                        .frame(height: 4)
                                        .foregroundStyle(.starbucksGreen)
                                }
                            }
                    }
                    .foregroundStyle(.starbucksGreen)

                    Button {
                        selected = .ownMenu
                    } label: {
                        Text("나만의 메뉴")
                            .frame(width: 130, height: 46)
                            .overlay(alignment: .bottom) {
                                if selected == .ownMenu {
                                    Rectangle()
                                        .frame(height: 4)
                                        .foregroundStyle(.starbucksGreen)
                                }
                            }
                    }
                    .foregroundStyle(.starbucksGreen)
                }
                .frame(maxWidth: .infinity, alignment: .leading)


                

                menuContent
                
                BlackBoxView()
            }
            .navigationDestination(for: TeaModel.self) { _ in
                NewProductView()
            }
            .navigationDestination(for: NewProductModel.self) { product in
                ProductInfoView(product: product, isLiked: $isLiked)
            }
        }
    }
    
    @ViewBuilder
    private var menuContent: some View {
        
        if selected == .fullMenu {
            FullMenuView(isLiked: $isLiked)
        } else if selected == .ownMenu{
            OwnMenuView(isLiked: $isLiked)
        }
        
    }
}



#Preview {
    OrderView()
}

