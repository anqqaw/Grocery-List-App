//
//  GroceryList.swift
//  GroceryList
//
//  Created by Aarni on 10.1.2023.
//

import Foundation

struct Grocery: Codable, Hashable, Identifiable {
    var id: Int
    var name: String
    var isTaken: Bool
    var isNotAvailable: Bool
}

