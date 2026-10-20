//
//  SheetView.swift
//  assignments1
//
//  Created by 전시언 on 10/21/26.
//

import SwiftUI

struct SheetView: View {
    @Binding var name : String
    @State private var showSheet : Bool = false
    
    var body: some View {
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
                
                TextFieldView(title: "비밀번호 입력", text: $name)
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
}
