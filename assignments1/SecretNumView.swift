//
//  SecretNumView.swift
//  assignments1
//
//  Created by 전시언 on 10/16/26.
//

import SwiftUI

struct SecretNumView: View {
    let email : String
    @State var next : Bool
    @State var name : String
    @State var password : String
    @State var isCliked = false
    
    var body: some View {
        NavigationStack {
            VStack(alignment: .leading){
                Text("사용할 비밀번호를\n이메일을입력해주세요")
                    .font(.head2)
                    .fixedSize(horizontal: false, vertical: true)
                    .padding(.top, 109)
                    .padding(.leading, 30)
                    .padding(.trailing, 140)
                    .padding(.bottom, 13)
                
                Text("\(email)로 가입중")
                    .font(.body1)
                    .foregroundStyle(.gray300)
                    .padding(.leading, 30)
                    .padding(.trailing, 175)
                    .padding(.bottom, 5)
                
                TextFieldView(title: "비밀번호 입력", text: $password, isSecure: !isCliked)
                .overlay(alignment: .trailing){
                    HStack{
                        CloseButtonView(email: $password)
                            .padding(.trailing, 4)
                        
                        ShowTextView(notEmpty: !password.isEmpty, isCliked: $isCliked)
                            .padding(.trailing, 16)
                        
                    }
                }
                .padding(.top, 27)
                .padding(.leading, 31)
                
                HStack(spacing: 0){
                    if !password.isValidPassword{
                        Image("enableOff")
                            .padding(.leading, 35)
                    }else{
                        Image("enableOn")
                            .padding(.leading, 35)
                    }
                    Text("영문, 숫자, 특수문자 포함 10글자 이상")
                        .font(.body2)
                        .padding(.leading, 5)
                        .foregroundStyle(!password.isValidPassword ? .gray300 : .starbucksGreen)
                }
                
                SheetView(name: $name)
                
                NextButtonView(email: email, title: "가입하기", isDisabled: !password.isValidPassword) {
                    next = true
                }
                .padding(.horizontal, 22)
                .padding(.bottom, 13)
            }
            .navigationDestination(isPresented: $next) {
                WelcomeView(name: email)
            }
        }
    }
}


#Preview {
    SecretNumView(email: "sa", next: false, name: "asd", password: "Asd")
}
