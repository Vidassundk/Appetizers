//
//  LoadingView.swift
//  Appetizers
//
//  Created by Vidas Sun on 20/05/2025.
//

import SwiftUI

#if canImport(UIKit)
    import UIKit

    struct ActivityIndicator: UIViewRepresentable {
        func makeUIView(context: Context) -> UIActivityIndicatorView {
            let spinner = UIActivityIndicatorView(style: .large)
            spinner.startAnimating()
            return spinner
        }

        func updateUIView(_ uiView: UIActivityIndicatorView, context: Context) {
        }

        typealias UIViewType = UIActivityIndicatorView
    }

#elseif canImport(AppKit)
    import AppKit

    struct ActivityIndicator: NSViewRepresentable {
        func makeNSView(context: Context) -> NSProgressIndicator {
            let spinner = NSProgressIndicator()
            spinner.style = .spinning
            spinner.controlSize = .regular
            spinner.isDisplayedWhenStopped = false
            spinner.startAnimation(nil)
            return spinner
        }

        func updateNSView(_ nsView: NSProgressIndicator, context: Context) {}

        typealias NSViewType = NSProgressIndicator
    }
#endif

struct LoadingView: View {
    var body: some View {
        ZStack {
            backgroundColor
                .ignoresSafeArea()
            ActivityIndicator()
        }
    }

    private var backgroundColor: Color {
        #if canImport(UIKit)
            return Color(UIColor.systemBackground)
        #elseif canImport(AppKit)
            return Color(NSColor.windowBackgroundColor)
        #else
            return Color.white
        #endif
    }
}
