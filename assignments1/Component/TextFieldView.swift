//
//  TextFieldView.swift
//  assignments1
//
//  Created by 전시언 on 10/20/26.
//

import SwiftUI

struct TextFieldView: View {
    let title : String
    @Binding var text : String
    var isSecure: Bool = false
    var body: some View {
        Group{
            if isSecure {
                SecureField(title, text: $text)
            } else{
                TextField(title, text: $text)
            }
        }
        .textInputAutocapitalization(.never)
        .autocorrectionDisabled()
        .padding(.horizontal, 15)
        .frame(width: 313, height: 47)
        .background(
            RoundedRectangle(cornerRadius: 10)
                .fill(.white1)
                .overlay(
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(.gray400, lineWidth: 1)
                )
        )
    }
}


#Preview {
    TextFieldView(title: "다음", text: .constant(""))
}
