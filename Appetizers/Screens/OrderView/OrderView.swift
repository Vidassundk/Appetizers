//
//  OrderView.swift
//  Appetizers
//
//  Created by Vidas Sun on 20/05/2025.
//

import SwiftUI

struct OrderView: View {

    @EnvironmentObject var order: Order

    var body: some View {
        NavigationView {
            ZStack {
                VStack {
                    List {
                        ForEach(order.items) {
                            appetizer in AppetizerListCell(appetizer: appetizer)
                        }.onDelete(perform: order.deleteItems)
                    }.listStyle(PlainListStyle())

                    Button {
                        print("Order Placed")
                    } label: {
                        APButton(
                            title:
                                "€\(order.totalPrice, specifier: "%.2f") - Place Order"
                        )
                    }.padding(.bottom, 20)
                }

                if order.items.isEmpty {
                    EmptyState(message: "You have no orders")
                }
            }
            .navigationTitle("🧾 Order")
        }
    }

}

#Preview {
    OrderView()
}
