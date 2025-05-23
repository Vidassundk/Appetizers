import SwiftUI

struct AlertItem: Identifiable {
    let id = UUID()
    let title: Text
    let message: Text
    let dismissButton: Alert.Button
}
struct AlertContext {

    //MARK: - Network Alerts

    static let invalidData = AlertItem(
        title: Text("Server Error"),
        message:
            Text(
                "The data received from the server was invalid. Please contact support."
            ),
        dismissButton: .default(Text("OK")))
    static let invalidResponse = AlertItem(
        title: Text("Server Error"),
        message:
            Text(
                "Invalid response from the server. Please try again later or contact support."
            ),
        dismissButton: .default(Text("OK")))
    static let invalidURL = AlertItem(
        title: Text("Server Error"),
        message:
            Text(
                "There was an issue connecting to the server. If this persists, please contact support."
            ),
        dismissButton: .default(Text("OK")))
    static let unableToComplete = AlertItem(
        title: Text("Server Error"),
        message:
            Text(
                "Unable to complete your request at this time. Please check your internet connection."
            ),
        dismissButton: .default(Text("OK")))

    //MARK: - Acount Alerts

    static let invalidForm = AlertItem(
        title: Text("Invalid Form"),
        message:
            Text(
                "Please ensure all forms in the field have been filled out."
            ),
        dismissButton: .default(Text("OK")))
    static let invalidEmail = AlertItem(
        title: Text("Invalid Email"),
        message:
            Text(
                "Please ensure your email address is valid."
            ),
        dismissButton: .default(Text("OK")))
    static let userSaveSuccess = AlertItem(
        title: Text("Profile Saved"),
        message:
            Text(
                "Your profile information was successfully saved."
            ),
        dismissButton: .default(Text("OK")))
    static let userSaveError = AlertItem(
        title: Text("Profile save unsuccessful"),
        message:
            Text(
                "Something went wrong. Your profile information was not saved. Please contact support."
            ),
        dismissButton: .default(Text("OK")))

}
