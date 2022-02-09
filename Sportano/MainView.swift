//
//  MainView.swift
//  Sportano
//
//  Created by Dawid Kolasinski on 06/02/2022.
//

import SwiftUI


struct MainView: View {
    
    
    var body: some View {
        TabView {
            ContentView()
                .tabItem {
                    Image(systemName: "rectangle.grid.2x2")
                    Text("Główna")
                }
                
            
            ShopCategoriesView()
                .tabItem {
                    Image(systemName: "line.3.horizontal")
                    Text("Katalog")
                }
            
            CartView()
                .tabItem {
                    Image(systemName: "cart")
                    Text("Koszyk")
                }
            
            FavoritesView()
                .tabItem {
                    Image(systemName: "heart")
                    Text("Ulubione")
                }
            
            AccountView()
                .tabItem {
                    Image(systemName: "person")
                    Text("Konto")
                }
            
            
            
        } //TabView
        
        
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
