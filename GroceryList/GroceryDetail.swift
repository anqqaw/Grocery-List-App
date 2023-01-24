//
//  GroceryDetail.swift
//  GroceryList
//
//  Created by Aarni on 17.1.2023.
//

import SwiftUI

struct GroceryDetail: View {
    @EnvironmentObject var modelData: ModelData
    var groceryList: Grocery

    var groceryIndex: Int {
        modelData.groceries.firstIndex(where: { $0.id == groceryList.id })!
    }

    var body: some View {
        VStack {
            Text("\(groceryList.name)")
                .font(.title)

            Divider()

            //  ei kahta nappia pohjaan samaan aikaan
            
            Toggle(isOn: $modelData.groceries[groceryIndex].isNotAvailable) {
                Text("Missing")
            }

            Toggle(isOn: $modelData.groceries[groceryIndex].isTaken) {
                Text("Taken")
            }
        }
    }
}

struct GroceryDetail_Previews: PreviewProvider {
    static let modelData = ModelData()

    static var previews: some View {
        GroceryDetail(groceryList: ModelData().groceries[0])
            .environmentObject(modelData)
    }
}
