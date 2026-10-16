//
//  ShowTextView.swift
//  assignments1
//
//  Created by 전시언 on 10/16/26.
//

import SwiftUI

struct ShowTextView: View {
    let notEmpty : Bool
    @Binding var isCliked : Bool
    
    var body: some View {
        
        Button{
            isCliked.toggle()
        } label: {
            if notEmpty {
                Image(isCliked ? "eye" : "noeye")
            }
        }
    }
}
