//
//  NewProductViewModel.swift
//  assignments2
//
//  Created by 전시언 on 10/22/26.
//

import SwiftUI

@Observable
final class NewProductViewModel {
    private(set) var listNewProduct: [NewProductModel]
    = [
        NewProductModel(teaImage: "tea1", teaName: "아이스 카스텔라 고구마 라떼", teaInfo: "Iced Castella Sweet Potato Milk", teaPrice: "6,900원"),
        NewProductModel(teaImage: "tea6", teaName: "아이스 말차 글레이즈드 티 라떼", teaInfo: "Iced Malcha Glazed Tea Latte", teaPrice: "6,700원"),
        NewProductModel(teaImage: "tea6", teaName: "스타벅스 자몽 허니 에어로카노", teaInfo: "Starbucks GrapeFruit Honey Aerocan", teaPrice: "6,100원")
    ]
        
    func product(id: UUID) -> NewProductModel? {
        listNewProduct.first { $0.id == id }
    }
}
