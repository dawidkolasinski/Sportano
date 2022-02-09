//
//  ShopCategoriesView.swift
//  Sportano
//
//  Created by Dawid Kolasinski on 09/02/2022.
//

import SwiftUI

struct ShopCategoriesView: View {
    let categories: [Category] = Bundle.main.decode("categories.json")

    var body: some View {
        
        NavigationView {
            
            
            List(categories, children: \.subcategories) { row in
                
                HStack {
                    if let image = row.listImageName{
                        Image(systemName: image)
                            .frame(width: 40)
                    }
                    Text(row.name)
                }
                
            }//List

            .navigationBarTitle("Kategorie")
        }//Navi


        
        

        
        
    }
}

struct ShopCategoriesView_Previews: PreviewProvider {
    static var previews: some View {
        ShopCategoriesView()
    }
}
