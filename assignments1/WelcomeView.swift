//
//  WelcomeView.swift
//  assignments1
//
//  Created by 전시언 on 10/16/26.
//

import SwiftUI

struct WelcomeView: View {
    let name: String

    var body: some View {
        
        VStack{
            Image("Icon")
                .padding(.bottom, 93.38)
                .padding(.top, 112)
            Text("\(name)님")
                .font(.head2)
                .foregroundStyle(.white1)
                .frame(maxWidth: .infinity, alignment: .center)
                 
            Text("가입을 환영합니다!")
                .font(.head2)
                .foregroundStyle(.white1)
                .padding(.bottom,249)
                .frame(maxWidth: .infinity, alignment: .center)
            Button {
                
            } label: {
                Text("메인으로")
                    .foregroundStyle(.starbucksGreen)
            }
            .frame(maxWidth: .infinity, alignment: .center)
            .frame(width: 331, height: 56)
            .background(
                RoundedRectangle(cornerRadius: 10)
                    .fill(.white1)
            )
            .contentShape(Rectangle())
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color("darkGreen"))
        .ignoresSafeArea()
    }
}

#Preview {
    WelcomeView(name: "상엽")
}
