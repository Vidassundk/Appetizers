//
//  AppetizerListCell.swift
//  Appetizers
//
//  Created by Vidas Sun on 20/05/2025.
//

import SwiftUI

struct AppetizerListCell: View {

    var appetizer: Appetizer

    var body: some View {
        HStack {
            AppetizerRemoteImage(urlString: appetizer.imageURL)
                .aspectRatio(contentMode: .fill)
                .frame(width: 120, height: 90)
                .cornerRadius(8)
            VStack(alignment: .leading, spacing: 5) {
                Text(appetizer.name)
                    .font(.title2)
                    .fontWeight(.medium)
                Text("€ \(appetizer.price, specifier: "%.2f")")
                    .font(.caption)
                    .foregroundColor(.secondary)
                    .fontWeight(.semibold)
            }.padding(.leading)
        }
    }
}

#Preview {
    AppetizerListCell(appetizer: MockData.sampleAppetizer)
}
