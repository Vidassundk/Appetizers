//
//  User.swift
//  Appetizers
//
//  Created by Vidas Sun on 21/05/2025.
//

import Foundation

struct User: Codable {

    var firstName = ""
    var lastName = ""
    var email = ""
    var birthDate = Date()
    var extraNapkins = false
    var frequentRefils = false
}
