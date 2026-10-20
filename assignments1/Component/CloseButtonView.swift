//
//  CloseButtonView.swift
//  assignments1
//
//  Created by 전시언 on 10/16/26.
//

import SwiftUI

struct CloseButtonView: View {
    @Binding var email: String
    
    var body: some View {
        Button {
            email = ""
        } label: {
            if !email.isEmpty {
                Image("Close")
            }
        }
    }
}
