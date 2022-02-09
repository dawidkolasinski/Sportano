//
//  ShoppingCartView.swift
//  Sportano
//
//  Created by Dawid Kolasinski on 06/02/2022.
//

import SwiftUI

struct CartView: View {
    
    private let shopItems: [ShopItem] = Bundle.main.decode("shopitems.json")
    let columns = [
            GridItem(.adaptive(minimum: 300))
        ]
    
    var body: some View {
        
        NavigationView {
            
            ScrollView {
                LazyVGrid(columns: columns, spacing: 20) {
                    
                
                    ForEach(shopItems) { item in
                        ShopItemView(shopItem: item)
                            .frame(width: 300)
                    }
                    .padding()
                }
            }
            
            
            
            .navigationTitle("Mój koszyk")
        }
        
        
    }
}

struct ShoppingCartView_Previews: PreviewProvider {
    static var previews: some View {
        CartView()
    }
}
