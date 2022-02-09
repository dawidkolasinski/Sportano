//
//  MyAccountCard.swift
//  Sportano
//
//  Created by Dawid Kolasinski on 08/02/2022.
//

import Foundation

struct MyAccountCard: Codable, Identifiable {
    
    let id: Int
    let header: String
    let text: String
    let optionalText: String
    let buttonText: String
    
}
