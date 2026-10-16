//
//  SecretNumView.swift
//  assignments1
//
//  Created by 전시언 on 10/16/26.
//

import SwiftUI

struct SecretNumView: View {
    @State var email : String
    @State var name : String
    @State var password : String
    @State var isCliked = false
    @State private var showSheet = false
    
    var body: some View {
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
            
            Group {
                if isCliked {
                    TextField("비밀번호 입력", text: $password)
                } else {
                    SecureField("비밀번호 입력", text: $password)
                }
            }
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
                    CloseButtonView(email: $password)
                        .padding(.trailing, 4)
                    
                    ShowTextView(notEmpty: !password.isEmpty, isCliked: $isCliked)
                        .padding(.trailing, 16)
                    
                }
            }
            .padding(.top, 27)
            .padding(.leading, 31)
            HStack(spacing: 0){
                if password.isEmpty{
                    Image("enableOff")
                        .padding(.leading, 35)
                }else{
                    Image("enableOn")
                        .padding(.leading, 35)
                }
                Text("영문, 숫자, 특수문자 포함 10글자 이상")
                    .font(.body2)
                    .padding(.leading, 5)
                    .foregroundStyle(password.isEmpty ? .gray300 : .starbucksGreen)
            }
            
            
            Button(name.isEmpty ? "닉네임 설정" : name){
                showSheet = true
            }
            .font(.body2)
            .underline()
            .foregroundStyle(.gray300)
            .frame(maxWidth: .infinity, alignment: .center)
            .padding(.top, 40)
            .padding(.bottom, 304)
            .sheet(isPresented: $showSheet) {
                VStack(alignment: .leading) {
                    Text("닉네임을 입력해주세요")
                        .font(.subhead1)
                        .foregroundStyle(.white1)
                        .padding(.top, 42)
                        .padding(.leading, 22)
                        .padding(.bottom, 19)
                    
                    TextField("닉네임 입력", text: $name)
                        .frame(width: 313, height: 47)
                        .background(
                            RoundedRectangle(cornerRadius: 10)
                                .fill(.white1)
                                .overlay(
                                    RoundedRectangle(cornerRadius: 10)
                                        .stroke(.gray400, lineWidth: 1)
                                )
                            )
                        .padding(.leading, 29)
                        .padding(.trailing, 33)
                        .padding(.bottom,112)
                    
                    Button("완료") {
                        showSheet = false
                    }
                    .foregroundStyle(.starbucksGreen)
                    .frame(maxWidth: .infinity, alignment: .center)
                    .frame(width: 331, height: 56)
                    .background(
                        RoundedRectangle(cornerRadius: 10)
                            .fill(.white1)
                    ) 
                    .contentShape(Rectangle())
                    .padding(.bottom, 47)
                    .padding(.leading, 20)
                    .padding(.trailing, 24)
                }
                .presentationDetents([.fraction(0.5)])
                .presentationBackground(.darkGreen)
                
            }
        }
        
        NextButtonView(email: $email, title: "가입하기") {
            WelcomeView(name: name)
        }
            .padding(.horizontal, 22)
            .padding(.bottom, 13)
    }
}


#Preview {
    SecretNumView(email: "sa", name: "asd", password: "Asd")
}
