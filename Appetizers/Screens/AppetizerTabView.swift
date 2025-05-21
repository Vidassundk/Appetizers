//
//  AppetizerTabView.swift
//  Appetizers
//
//  Created by Vidas Sun on 20/05/2025.
//

import SwiftUI

struct AppetizerTabView: View {

    @EnvironmentObject var order: Order

    var body: some View {
        TabView {
            AppetizerListView()
                .tabItem {
                    Label("Home", systemImage: "house")
                }
            AccountView()
                .tabItem {
                    Label("Account", systemImage: "person")
                }
            OrderView()
                .tabItem {
                    Label("Order", systemImage: "bag")
                }.badge(order.items.count)
        }.accentColor(.brandColor)

    }
}

#Preview {
    AppetizerTabView().environmentObject(Order())
}
