//
//  LoginView.swift
//  assignments1
//
//  Created by 전시언 on 10/16/26.
//

import SwiftUI

struct LoginView: View {
    @State var email : String = ""
    @State var isCliked : Bool = false
    
    var body: some View {
        NavigationStack {
            VStack(alignment: .leading){
                Text("로그인/가입하려는\n이메일을입력해주세요")
                    .font(.head2)
                    .fixedSize(horizontal: false, vertical: true)
                    .padding(.top, 109)
                    .padding(.leading, 30)
                    .padding(.trailing, 140)
                    .padding(.bottom, 13)
                Text("결제 등 중요 알림, 로그인, 비밀번호 찾기에 필요해요.")
                    .font(.body1)
                    .foregroundStyle(.gray300)
                    .padding(.trailing, 97)
                    .padding(.leading, 30)
                    .padding(.bottom, 5)
                Text("사용 중인 이메일을 입력해주세요")
                    .font(.body1)
                    .foregroundStyle(.gray300)
                    .padding(.trailing, 97)
                    .padding(.leading, 30)

                TextField("email@address.com", text: $email)
                    .keyboardType(.emailAddress)
                    .padding(.horizontal, 31)
                    .frame(width: 313, height: 47)
                    .background(
                        RoundedRectangle(cornerRadius: 10)
                            .fill(.white1)
                            .overlay(
                                RoundedRectangle(cornerRadius: 10)
                                    .stroke(.gray400, lineWidth: 1)
                            )
                    )
                    .overlay(alignment: .trailing){
                        HStack{
                            CloseButtonView(email: $email)
                                .padding(.trailing, 4)
                            CheckButtonView(notEmpty: !email.isEmpty)
                                .padding(.trailing, 12)

                        }
                    }
                    .padding(.top, 27)
                    .padding(.leading, 31)
                NextButtonView(email: $email, title: "다음") {
                    SecretNumView(email: email, name: "", password: "")
                }
                    .padding(.horizontal, 22)
                    .padding(.top, 383)
                    .padding(.bottom, 13)
            }
        }
    }
}

#Preview {
    LoginView()
}
