//
//  ProductInfoView.swift
//  assignments2
//
//  Created by 전시언 on 10/23/26.
//

import SwiftUI

struct ProductInfoView: View {
    let product: NewProductModel
    @Environment(\.dismiss) private var dismiss
    @Binding var isLiked: Bool
    
    var body: some View {
        
        VStack {
            ScrollView {
                VStack(alignment: .leading){
                    Image(product.teaImage)
                        .resizable()
                        .scaledToFill()
                        .frame(height: 333)
                        .frame(maxWidth: .infinity)
                        .clipped()
                        .ignoresSafeArea()
                    
                    HStack {
                        Text(product.teaName)
                            .font(.head2)
                        Text("New")
                            .font(.subhead1)
                            .foregroundStyle(.green1)
                    }
                    .padding(.bottom, 7)
                    .padding(.leading, 21)
                    
                    Text(product.teaInfo)
                        .font(.cap2)
                        .foregroundStyle(.gray1)
                        .padding(.bottom, 14)
                        .padding(.leading, 21)
                    
                    Text("가을에 잘 어울리는 군고구마를 한 잔에 담은 음료. 포슬한 카스텔라, 쫀득한 펄이 어우러져 다채로운 식감을 즐길 수 있는 음료.")
                        .font(.cap3)
                        .padding(.bottom, 14)
                        .padding(.leading, 21)
                    
                    Text(product.teaPrice)
                        .font(.head2)
                        .padding(.leading, 21)
                    
                    ZStack {
                        RoundedRectangle(cornerRadius: 26)
                            .foregroundStyle(.white)
                            .overlay(RoundedRectangle(cornerRadius: 26)
                                .stroke(.gray3)
                            )
                            .frame(width: 326, height: 36)
                        
                        Text("ICED ONLY")
                            .font(.subhead1)
                            .foregroundStyle(.blue1)
                            .frame(maxWidth: .infinity, alignment: .center)
                    }
                    .padding(.bottom, 14)
                    
                    Rectangle()
                        .foregroundStyle(.gray4)
                        .frame(width: 333, height: 76)
                        .overlay(Text("*컬러 드리즐은 시간이 지날수록 번지는 현상이 있으나 음료 품질과는 무관하니 안심하고 드세요.")
                            .font(.cap3)
                            .foregroundStyle(.gray2)
                        )
                        .frame(maxWidth: .infinity, alignment: .center)
                }
                Spacer()
            }
            .ignoresSafeArea(edges: .top)

            
            Rectangle()
                .foregroundStyle(.white)
                .frame(width: 375, height: 88)
                .overlay{
                    HStack {
                        HeartButtonView(isClicked: $isLiked)
                            .padding(.trailing, 20)
                            .padding(.leading, 21)
                        
                        Capsule()
                            .foregroundStyle(.starbucksGreen)
                            .frame(width: 284, height: 42)
                            .overlay {
                                Text("주문하기")
                                    .foregroundStyle(.white)
                            }
                    }
                }
                .overlay(alignment: .top) {
                    Rectangle()
                        .fill(.gray3)
                        .frame(height: 0.2)
                        .frame(maxWidth: .infinity)
                }
        }
        .navigationBarBackButtonHidden(true)
        .overlay(alignment: .topLeading) {
            HStack {
                Button {
                    dismiss()
                } label: {
                    Image(.backButton)
                        .resizable()
                        .frame(width: 21, height: 21)
                        .padding(9)
                        .background(.black.opacity(0.2))
                        .clipShape(Circle())
                }
                .padding(.leading, 21)
                
                Spacer()
                
                Image("share")
                    .resizable()
                    .frame(width: 21, height: 21)
                    .padding(9)
                    .background(.black.opacity(0.2))
                    .clipShape(Circle())
                    .padding(.trailing, 21)
                
            }
        }
    }
}

#Preview {
    ProductInfoView(product: NewProductModel(teaImage: "tea4", teaName: "asdasd", teaInfo: "dasdsa", teaPrice: "asdasd"), isLiked: .constant(true))
}
