//
//  SportView.swift
//  Sportano
//
//  Created by Dawid Kolasinski on 06/02/2022.
//

import SwiftUI

struct ShopView: View {
    
    let categoryName: String
    let categories: [Category] = Bundle.main.decode("categories.json")

    
    var body: some View {
        Text(categoryName)
    }
}




struct ShopView_Previews: PreviewProvider {
    static let categories: [Category] = Bundle.main.decode("categories.json")
    
    static var previews: some View {
        ShopView(categoryName: categories[0].name)
    }
}
