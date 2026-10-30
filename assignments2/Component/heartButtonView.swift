//
//  heartButtonView.swift
//  assignments2
//
//  Created by 전시언 on 10/24/26.
//

import SwiftUI

struct HeartButtonView: View {
    @Binding var isClicked: Bool
    var body: some View {
        Button {
            isClicked.toggle()
        } label: {
            Image(isClicked ? "heartFill" : "heart")
        }
    }
}

#Preview {
    HeartButtonView(isClicked: .constant(false))
}
