//
//  ShopItemView.swift
//  Sportano
//
//  Created by Dawid Kolasinski on 09/02/2022.
//

import SwiftUI

struct ShopItemView: View {
    
    let shopItem: ShopItem
    
    var body: some View {
        ZStack {
            VStack {
                
                ZStack(alignment: .top) {
                    Image(shopItem.imageName)
                    if (shopItem.discountedPrice != nil) {
                        Text(shopItem.discountPercentage!)
                            .padding(4)
                            .foregroundColor(.white)
                            .background(.red)
                            .clipShape(RoundedRectangle(cornerRadius: 5))
                            .offset(x: -80)
                        Button {
                            //add to fav
                        } label: {
                            Image(systemName: shopItem.isFavorite ?  "heart.fill" :  "heart")
                                .padding()
                                .foregroundColor(shopItem.isFavorite ? .red : .black)
                                .clipShape(RoundedRectangle(cornerRadius: 20))
                                .offset(x: 80)
                        }
                        
                    }
                    
                }//ZStack
                .font(.title3)
                
                Text(shopItem.name)
                    .font(.headline)
                
                HStack {
                    
                    if (shopItem.discountedPrice != nil) {
                        Text(shopItem.discountedPrice!)
                            .font(.title2)
                            .fontWeight(.heavy)
                            .padding(.trailing, 16)
                        
                        
                        Text(shopItem.price)
                            .font(.title3)
                            .foregroundColor(.gray)
                            .strikethrough(true, color: .gray)
                        
                        Spacer()
                    } else {
                        Text(shopItem.price)
                            .font(.title2)
                            .fontWeight(.heavy)
                            .padding(.trailing, 16)
                        Spacer()
                    }
                    
                    
                }//HStack
                .padding(4)
                
                
            }//VStack
            .padding()
            

        }//ZStack
        .frame(width: 300, height: 400)
        .background(.white)
        .clipShape(RoundedRectangle(cornerRadius: 20))
        .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.15), radius: 8, x: 2, y: 2)
        
    }
}

struct ShopItemView_Previews: PreviewProvider {
    static let shopItems: [ShopItem] = Bundle.main.decode("shopitems.json")
    
    static var previews: some View {
        ShopItemView(shopItem: shopItems[0])
    }
}
