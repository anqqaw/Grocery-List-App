//
//  GroceryListApp.swift
//  GroceryList
//
//  Created by Aarni on 10.1.2023.
//

import SwiftUI

@main
struct GroceryListApp: App {
    @StateObject private var modelData = ModelData()

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData)
        }
    }
}
