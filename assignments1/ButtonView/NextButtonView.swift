//
//  NextButtonView.swift
//  assignments1
//
//  Created by 전시언 on 10/16/26.
//

import SwiftUI

struct NextButtonView<Destination: View>: View {
    @Binding var email: String
    let title: String
    @ViewBuilder let destination: () -> Destination

    var body: some View {
        NavigationLink {
            destination()
        } label: {
            Text(title)
                .foregroundStyle(email.isEmpty ? .gray400 : .white1)

        }
        .disabled(email.isEmpty)
        .frame(maxWidth: .infinity, alignment: .center)
        .frame(width: 331, height: 56)
        .background(
            RoundedRectangle(cornerRadius: 10)
                .fill(email.isEmpty ? .gray300 : .starbucksGreen)
        )
        .contentShape(Rectangle())

    }
}
