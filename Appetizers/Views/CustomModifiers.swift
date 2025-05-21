//
//  CustomModifiers.swift
//  Appetizers
//
//  Created by Vidas Sun on 21/05/2025.
//

import SwiftUI

struct StandartButtonStyle: ViewModifier {
    func body(content: Content) -> some View {
        content
            .buttonStyle(.bordered).tint(.brandColor)
            .controlSize(.large)
    }
}

extension View {
    func standartButtonStyle() -> some View {
        modifier(StandartButtonStyle())
    }
}
