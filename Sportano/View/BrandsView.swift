//
//  BrandsView.swift
//  Sportano
//
//  Created by Dawid Kolasinski on 08/02/2022.
//

import SwiftUI

struct BrandsView: View {
    
    private let brands: [Brand] = Bundle.main.decode("brands.json")
    
    var body: some View {
        
        VStack(alignment: .leading) {
            Text("Polecane marki")
                .font(.title)
                .fontWeight(.heavy)
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack {
                    ForEach(brands) { brand in
                        
                        NavigationLink(destination: ShopView(categoryName: brand.name)) {
                            Image(brand.name)
                                .resizable()
                                .scaledToFit()
                        }
                        
                        
                    }//Loop
                }//HStack
                .frame(height: 50)

            }//ScrollView
        }
        
        
        
    }
}

struct BrandsView_Previews: PreviewProvider {
    static var previews: some View {
        BrandsView()
    }
}
