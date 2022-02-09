//
//  Category.swift
//  Sportano
//
//  Created by Dawid Kolasinski on 06/02/2022.
//

import Foundation

struct Category: Codable, Identifiable {
    let id = UUID()
    let name: String
    let imageName: String?
    let listImageName: String?
    let subcategories: [Category]?
}
