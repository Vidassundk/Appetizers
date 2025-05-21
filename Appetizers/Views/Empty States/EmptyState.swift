//
//  EmptyState.swift
//  Appetizers
//
//  Created by Vidas Sun on 21/05/2025.
//

import SwiftUI

struct EmptyState: View {

    let symbolName: String = "list.bullet.rectangle.portrait.fill"
    let message: String

    var body: some View {
        ZStack {
            Color(.systemBackground).edgesIgnoringSafeArea(.all)
            VStack {
                Image(systemName: symbolName)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(height: 120)
                    .symbolRenderingMode(.palette)
                    .foregroundStyle(.white, Color.primary)
                Text(message).font(.title2).fontWeight(.semibold)
                    .multilineTextAlignment(.center).foregroundColor(.secondary)
                    .padding()
            }.offset(y: -40)
        }
    }
}

#Preview {
    EmptyState(
        message:
            "List is empty. This is also a long text to test its multiline behavior."
    )
}
