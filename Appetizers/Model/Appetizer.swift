//
//  Appetizer.swift
//  Appetizers
//
//  Created by Vidas Sun on 20/05/2025.
//

import Foundation

struct Appetizer: Decodable, Identifiable {
    let id: Int
    let name: String
    let description: String
    let price: Double
    let imageURL: String
    let calories: Int
    let protein: Int
    let carbs: Int
}

struct AppetizerResponse: Decodable {
    let request: [Appetizer]
}

struct MockData {
    static let sampleAppetizer = Appetizer(
        id: 001,
        name: "Test Appetizer",
        description: "This is a description for my appetizer, it is yummy",
        price: 9.99,
        imageURL: "",
        calories: 99,
        protein: 99,
        carbs: 99)

    static let orderItemOne = Appetizer(
        id: 001,
        name: "Test Appetizer One",
        description: "This is a description for my appetizer, it is yummy",
        price: 9.99,
        imageURL: "",
        calories: 99,
        protein: 99,
        carbs: 99)

    static let orderItemTwo = Appetizer(
        id: 002,
        name: "Test Appetizer Two",
        description: "This is a description for my appetizer, it is yummy",
        price: 9.99,
        imageURL: "",
        calories: 99,
        protein: 99,
        carbs: 99)

    static let orderItemThree = Appetizer(
        id: 003,
        name: "Test Appetizer Three",
        description: "This is a description for my appetizer, it is yummy",
        price: 9.99,
        imageURL: "",
        calories: 99,
        protein: 99,
        carbs: 99)

    static let appetizers = [
        sampleAppetizer, sampleAppetizer, sampleAppetizer, sampleAppetizer,
    ]

    static let orderItems = [orderItemOne, orderItemTwo, orderItemThree]
}
