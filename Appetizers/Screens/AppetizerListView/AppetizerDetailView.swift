//
//  AppetizerDetailView.swift
//  Appetizers
//
//  Created by Vidas Sun on 21/05/2025.
//

import SwiftUI

struct AppetizerDetailView: View {

    let appetizer: Appetizer
    @Binding var isShowingDetail: Bool

    var body: some View {
        VStack {
            AppetizerRemoteImage(urlString: appetizer.imageURL).aspectRatio(
                contentMode: .fit
            )
            .frame(width: 300, height: 225)
            VStack {

                Text(appetizer.name)
                    .font(.title2).fontWeight(.semibold)
                Text(appetizer.description)
                    .multilineTextAlignment(.center).font(.body).padding()
                HStack(spacing: 40) {
                    NutritionInfo(title: "Calories", number: appetizer.calories)
                    NutritionInfo(title: "Carbs", number: appetizer.carbs)
                    NutritionInfo(title: "Protein", number: appetizer.protein)
                }

            }
            Spacer()

            Button {
                print("Add to cart")
            } label: {
                APButton(
                    title:
                        "€\(appetizer.price, specifier: "%.2f") - Add to cart")
            }
            .padding(.bottom, 30)

        }
        .frame(width: 300, height: 525).background(Color(.systemBackground))
        .cornerRadius(12).shadow(radius: 40).overlay(
            Button {
                isShowingDetail = false
            } label: {
                XDismissButton()
            }, alignment: .topTrailing)
    }
}

#Preview {
    AppetizerDetailView(
        appetizer: MockData.sampleAppetizer, isShowingDetail: .constant(true))
}

struct NutritionInfo: View {

    var title: String
    var number: Int

    var body: some View {
        VStack(spacing: 5) {
            Text(title).font(.caption).bold()
            Text("\(number)").foregroundColor(
                .secondary
            ).fontWeight(.semibold).italic()
        }
    }
}
