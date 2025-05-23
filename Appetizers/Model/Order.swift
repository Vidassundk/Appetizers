//
//  Order.swift
//  Appetizers
//
//  Created by Vidas Sun on 21/05/2025.
//

import SwiftUI

final class Order: ObservableObject {

    @Published var items: [Appetizer] = []

    var totalPrice: Double {
        items.reduce(0) { $0 + $1.price }
    }

    func add(_ item: Appetizer) {
        items.append(item)
    }

    func deleteItems(at offsets: IndexSet) {
        items.remove(atOffsets: offsets)
    }

}
