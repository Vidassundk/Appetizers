//
//  AccountView.swift
//  Appetizers
//
//  Created by Vidas Sun on 20/05/2025.
//

import SwiftUI

struct AccountView: View {

    @StateObject var viewModel = AccountViewModel()

    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("Personal Info")) {
                    TextField("Name", text: $viewModel.user.firstName)
                    TextField("Last Name", text: $viewModel.user.lastName)
                    TextField("Email", text: $viewModel.user.email)
                        .keyboardType(
                            .emailAddress
                        )
                        .autocapitalization(.none).disableAutocorrection(true)
                    DatePicker(
                        "Birthday", selection: $viewModel.user.birthDate,
                        displayedComponents: .date)
                    Button {
                        viewModel.saveChanges()
                    } label: {
                        Text("Save Changes")
                    }
                }
                Section(header: Text("Request")) {
                    Toggle("Extra Napkins", isOn: $viewModel.user.extraNapkins)
                    Toggle(
                        "Frequent Refills", isOn: $viewModel.user.frequentRefils
                    )
                }.toggleStyle(
                    SwitchToggleStyle(tint: .brandColor))
            }
            .navigationTitle("🧑 Account")
        }.onAppear {
            viewModel.retrieveUser()
        }
        .alert(item: $viewModel.alertItem) {
            alertItem in
            Alert(
                title: alertItem.title, message: alertItem.message,
                dismissButton: alertItem.dismissButton)
        }
    }
}

#Preview {
    AccountView()
}
