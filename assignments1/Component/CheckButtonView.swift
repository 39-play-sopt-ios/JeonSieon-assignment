//
//  CheckButtonView.swift
//  assignments1
//
//  Created by 전시언 on 10/16/26.
//

import SwiftUI

struct CheckButtonView: View {
    let notEmpty: Bool

    var body: some View {
        Image(notEmpty ? "NonCheck" : "Check")
    }
}
