//
//  ShopItem.swift
//  Sportano
//
//  Created by Dawid Kolasinski on 09/02/2022.
//

import Foundation

struct ShopItem: Codable, Identifiable {
    
    let id: Int
    let name: String
    let imageName: String
    let price: String
    let discountedPrice: String?
    let discountPercentage: String?
    let isFavorite: Bool
    
}
