//
//  Groceries.swift
//  GroceryList
//
//  Created by Aarni on 10.1.2023.
//

import SwiftUI

struct GroceryList: View {
    @EnvironmentObject var modelData: ModelData
    @State private var showNotMarkedOnly = false

    var filteredGroceries: [Grocery] {
        modelData.groceries.filter { grocery in
            (showNotMarkedOnly || !grocery.isTaken)
        }
    }

//    var isAvailable: [Grocery] {
//        modelData.groceries.filter { item in
//            (item.isNotAvailable)
//        }
//    }

    var body: some View {
        NavigationView {
            List {
                Toggle(isOn: $showNotMarkedOnly) {
                    Text("Show all groceries")
                }

//                ForEach(isAvailable) { item in
//                    NavigationLink {
//                        GroceryDetail(groceryList: item)
//                    } label: {
//                        GroceryRow(groceryList: item)
//                    }
//                }

                ForEach(filteredGroceries) { grocery in
                    NavigationLink {
                        GroceryDetail(groceryList: grocery)
                    } label: {
                        GroceryRow(groceryList: grocery)
                    }
                }
            }
        }
        .navigationTitle("Groceries")
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct Groceries_Previews: PreviewProvider {
    static var previews: some View {
        GroceryList()
            .environmentObject(ModelData())
    }
}
