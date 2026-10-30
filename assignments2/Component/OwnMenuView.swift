//
//  OwnMenuView.swift
//  assignments2
//
//  Created by 전시언 on 10/23/26.
//

import SwiftUI

struct OwnMenuView: View {

    @Binding var isLiked: Bool
    
    var body: some View {
        Group {
            if isLiked == true {
                VStack {
                    HStack{
                        Image("tea1")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 90, height: 90)
                            .clipShape(Circle())
                            .padding(.leading, 18)

                        VStack(alignment: .leading) {
                            Text("아이스 카스텔라 고구마 라뗴")
                                .font(.subhead1)
                                .padding(.bottom, 2)

                            Text("Iced Castella Sweet Potato Milk")
                                .font(.cap2)
                                .foregroundStyle(.gray1)
                                .padding(.bottom, 10)

                            Text("6,900원")
                                .font(.subhead1)

                        }
                        Spacer()

                        HeartButtonView(isClicked: $isLiked)
                            .padding(.trailing, 16)
                            .padding(.bottom, 50)


                    }
                    .padding(.top, 29)

                    Spacer()
                }
            }
            else {
                VStack(alignment: .center) {
                    Group {
                        Text("등록된 나만의 메뉴가 없어요.")
                            .padding(.top, 43)
                        Text("즐겨 찾는 음료나 푸드를 나만의 메뉴로 등록하고")
                        Text("빠르게 주문해 보세요.")
                    }
                    .font(.cap3)
                    .foregroundStyle(.gray300)

                    Spacer()
                }
            }
        }
    }
}

