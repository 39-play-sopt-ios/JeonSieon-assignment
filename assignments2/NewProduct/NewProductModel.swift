//
//  NewProductModel.swift
//  assignments2
//
//  Created by 전시언 on 10/22/26.
//

import Foundation

struct NewProductModel: Identifiable, Hashable {
    let id = UUID()
    let teaImage: String
    let teaName: String
    let teaInfo: String
    let teaPrice: String
}
