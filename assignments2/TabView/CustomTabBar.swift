//
//  CustomTabBarView.swift
//  assignments2
//
//  Created by 전시언 on 10/24/26.
//

import SwiftUI

struct CustomTabBar: View {
    @Binding var selectedTab: TabCategory

    var body: some View {
        HStack {
            Spacer()
            tabButton(title: "Home", imageName: "Home", tab: .home)
            Spacer()
            tabButton(title: "Pay", imageName: "Pay", tab: .pay)
            Spacer()
            tabButton(title: "Order", imageName: "Order", tab: .order)
            Spacer()
            tabButton(title: "Gift", imageName: "Gift", tab: .gift)
            Spacer()
            tabButton(title: "Other", imageName: "Other", tab: .other)
            Spacer()
            
        }
        .padding(.horizontal, 24)
        .padding(.top, 14)
        .padding(.bottom, 24)
        .background(.ultraThinMaterial)
    }

    @ViewBuilder
    private func tabButton(title: String, imageName : String, tab: TabCategory) -> some View {
        Button {
            selectedTab = tab
        } label: {
            VStack(spacing: 6) {
                Image(imageName)
                    .font(.system(size: 18, weight: .semibold))

                Text(title)
                    .font(.caption2)
            }
            .foregroundStyle(.gray)
        }
    }
}
