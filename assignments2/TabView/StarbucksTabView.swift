//
//  StarbucksTabView.swift
//  assignments2
//
//  Created by 전시언 on 10/23/26.
//

import SwiftUI

enum TabCategory {
    case home
    case pay
    case order
    case gift
    case other
}

struct StarbucksTabView: View {
    
    @State var selectedTab: TabCategory = .home
    
    var body: some View {
        ZStack(alignment: .bottom) {
            TabView(selection: $selectedTab) {
                VStack {
                    Image("Home")
                    Text("Home")
                }
                .tag(TabCategory.home)

                VStack {
                    Image("Pay")
                    Text("Pay")
                }
                .tag(TabCategory.pay)

                OrderView()
                    .tag(TabCategory.order)

                VStack {
                    Image("Gift")
                    Text("Gift")
                }
                .tag(TabCategory.gift)

                VStack {
                    Image("Other")
                    Text("Other")
                }
                .tag(TabCategory.other)
            }
            .tabViewStyle(.page(indexDisplayMode: .never))
            .safeAreaInset(edge: .bottom, spacing: 0) {
                CustomTabBar(selectedTab: $selectedTab)
            }
        }
    }
}

#Preview {
    StarbucksTabView()
}
