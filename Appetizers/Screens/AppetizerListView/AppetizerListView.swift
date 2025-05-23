//
//  AppetizerListView.swift
//  Appetizers
//
//  Created by Vidas Sun on 20/05/2025.
//

import SwiftUI

struct AppetizerListView: View {
    @StateObject var viewModel = AppetizerListViewModel()

    var body: some View {
        ZStack {
            NavigationView {
                List(viewModel.appetizers) {
                    appetizer in
                    AppetizerListCell(appetizer: appetizer).onTapGesture {
                        viewModel.selectedAppetizer = appetizer
                        viewModel.isShowingDetail = true
                    }.listRowSeparator(.hidden)
                }.disabled(viewModel.isShowingDetail)
                    .navigationTitle("🍟 Appetizers")
            }.onAppear {
                viewModel.getAppetizers()
            }.blur(radius: viewModel.isShowingDetail ? 20 : 0)

            if viewModel.isShowingDetail {
                AppetizerDetailView(
                    appetizer: viewModel.selectedAppetizer!,
                    isShowingDetail: $viewModel.isShowingDetail)

            }

            if viewModel.isLoading {
                LoadingView()
            }

        }.alert(item: $viewModel.alertItem) { alertItem in
            Alert(
                title: alertItem.title, message: alertItem.message,
                dismissButton: alertItem.dismissButton)

        }
    }
}

#Preview {
    AppetizerListView()
}
