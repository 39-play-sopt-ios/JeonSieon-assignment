//
//  FullMenuViewModel.swift
//  assignments2
//
//  Created by 전시언 on 10/22/26.
//

import SwiftUI
import Observation

@Observable
final class FullMenuViewModel {
    private(set) var ListMenu: [TeaModel]
    = [
        TeaModel(teaImage: "tea1", teaCategory: "New"),
        TeaModel(teaImage: "tea2", teaCategory: "추천"),
        TeaModel(teaImage: "tea3",teaCategory: "콜드브루"),
        TeaModel(teaImage: "tea4", teaCategory: "블론드"),
        TeaModel(teaImage: "tea5", teaCategory: "에스프레소")
    ]
}


