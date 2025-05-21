//
//  APButton.swift
//  Appetizers
//
//  Created by Vidas Sun on 21/05/2025.
//

import SwiftUI

struct APButton: View {

    var title: LocalizedStringKey

    var body: some View {
        Text(title)
            .font(.title3)
            .fontWeight(.semibold).frame(
                width: 260, height: 50
            ).foregroundColor(.white).background(Color.primary)
            .cornerRadius(10)
    }
}

#Preview {
    APButton(title: "€ 20 - Add to cart")
}
