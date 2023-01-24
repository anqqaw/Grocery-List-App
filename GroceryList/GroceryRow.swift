//
//  GroceryRow.swift
//  GroceryList
//
//  Created by Aarni on 10.1.2023.
//

import SwiftUI

struct GroceryRow: View {
    var groceryList: Grocery

    var body: some View {
        HStack {
            Text(groceryList.name)
            
            Spacer()
            
            if groceryList.isNotAvailable {
                Image(systemName: "exclamationmark").foregroundColor(.red)
                    .padding(10)
            }

            if groceryList.isTaken {
                Image(systemName: "star.fill").foregroundColor(.yellow)
                    .padding(10)
            }
        }
    }
}

struct GroceryRow_Previews: PreviewProvider {
    static var groceries = ModelData().groceries
    
    static var previews: some View {
        Group {
            GroceryRow(groceryList: groceries[0])
            GroceryRow(groceryList: groceries[1])
        }
        .previewLayout(.fixed(width: 300, height: 70))
    }
}
