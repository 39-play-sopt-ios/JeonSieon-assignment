//
//  heartButtonView.swift
//  assignments2
//
//  Created by 전시언 on 10/24/26.
//

import SwiftUI

struct heartButtonView: View {
    @Binding var isClicked : Bool
    var body: some View {
        Button {
            isClicked.toggle()
        } label: {
            Image(isClicked ? "heartFill" : "heart")
        }
    }
}

#Preview {
    heartButtonView(isClicked: .constant(false))
}
