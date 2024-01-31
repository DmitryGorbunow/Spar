//
//  Product.swift
//  MySpar
//
//  Created by Dmitry Gorbunow on 1/31/24.
//
import Foundation
import SwiftUI

struct Product {
    let name: String
    let price: String
    let discountedPrice: String
    let discount: String
    let currency: String
    let imageUrl: String
    let rating: String
    let reviewCount: Int
    let country: String
    let description: String
    let specifications: [Specification]
    let feedbacks: [Feedback]
}

struct Specification: Hashable {
    let name: String
    let value: String
}

struct Feedback {
    let author: String
    let date: String
    let rating: Int
    let text: String
}


