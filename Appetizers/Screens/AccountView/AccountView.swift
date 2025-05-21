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
                    TextField("Name", text: $viewModel.firstName)
                    TextField("Last Name", text: $viewModel.lastName)
                    TextField("Email", text: $viewModel.email).keyboardType(
                        .emailAddress
                    )
                    .autocapitalization(.none).disableAutocorrection(true)
                    DatePicker(
                        "Birthday", selection: $viewModel.birthDate,
                        displayedComponents: .date)
                    Button {
                        viewModel.saveChanges()
                    } label: {
                        Text("Save Changes")
                    }
                }
                Section(header: Text("Request")) {
                    Toggle("Extra Napkins", isOn: $viewModel.extraNapkins)
                        .toggleStyle(
                            SwitchToggleStyle(tint: .primary))
                    Toggle("Frequent Refills", isOn: $viewModel.frequentRefils)
                        .toggleStyle(
                            SwitchToggleStyle(tint: .primary))
                }.toggleStyle(
                    SwitchToggleStyle(tint: .primary))
            }
            .navigationTitle("🧑 Account")
        }.alert(item: $viewModel.alertItem) {
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
