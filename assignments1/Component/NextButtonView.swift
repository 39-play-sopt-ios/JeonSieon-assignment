//
//  NextButtonView.swift
//  assignments1
//
//  Created by 전시언 on 10/16/26.
//

import SwiftUI

struct NextButtonView: View {
    let email: String
    let title: String
    let isDisabled: Bool
    let action: () -> Void
    
    var body: some View {
        Button(action: action) {
            Text(title)
                .foregroundStyle(isDisabled ? .gray400 : .white1)
                .frame(maxWidth: .infinity, alignment: .center)
                .frame(width: 331, height: 56)
                .background(
                    RoundedRectangle(cornerRadius: 10)
                        .fill(isDisabled ? .gray300 : .starbucksGreen)
                )
                .contentShape(Rectangle())
        }
        .disabled(isDisabled)
    }
}

