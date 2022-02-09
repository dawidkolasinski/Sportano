//
//  CategoryListItemView.swift
//  Sportano
//
//  Created by Dawid Kolasinski on 06/02/2022.
//

import SwiftUI

struct CategoryListItemView: View {
    
    let categories: [Category] = Bundle.main.decode("categories.json")
    
    var body: some View {
        
        TabView {
            
            ForEach(categories) { category in
                CategoryTabView(category: category)
                
            }//loop
            .frame(height: 300)
        }// TabView
        .cornerRadius(10)
        .tabViewStyle(.page)
        
        
    }
}

struct CategoryListItemView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryListItemView()
            .previewLayout(.fixed(width: 300, height: 300))
    }
}
