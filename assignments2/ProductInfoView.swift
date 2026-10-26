//
//  ProductInfoView.swift
//  assignments2
//
//  Created by 전시언 on 10/23/26.
//

import SwiftUI

struct ProductInfoView: View {
    @State var isClicked : Bool = false
    var body: some View {
        
        ScrollView {
            VStack(alignment: .leading){
                Image("tea1")
                    .resizable()
                    .scaledToFill()
                    .frame(height: 333)
                    .frame(maxWidth: .infinity)
                    .clipped()
                    .ignoresSafeArea()
                
                HStack {
                    Text("아이스 카스텔라 고구마 라떼")
                        .font(.head2)
                    Text("New")
                        .font(.subhead1)
                        .foregroundStyle(.green1)
                }
                .padding(.bottom, 7)
                .padding(.leading, 21)
                
                Text("Iced Castella Sweet Potato Milk")
                    .font(.cap2)
                    .foregroundStyle(.gray1)
                    .padding(.bottom, 14)
                    .padding(.leading, 21)
                
                Text("가을에 잘 어울리는 군고구마를 한 잔에 담은 음료. 포슬한 카스텔라, 쫀득한 펄이 어우러져 다채로운 식감을 즐길 수 있는 음료.")
                    .font(.cap3)
                    .padding(.bottom, 14)
                    .padding(.leading, 21)
                
                Text("6,900원")
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
                
                HStack {
                    heartButtonView(isClicked: $isClicked)
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
                .padding(.top, 48)
                
            }
            Spacer()
        }
    }
}

#Preview {
    ProductInfoView()
}
