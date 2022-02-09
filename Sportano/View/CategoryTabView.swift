//
//  CategoryTab.swift
//  Sportano
//
//  Created by Dawid Kolasinski on 06/02/2022.
//

import SwiftUI

struct CategoryTabView: View {
    
    let category: Category
    
    var body: some View {
            NavigationLink(destination: ShopView(categoryName: category.name)){
                ZStack(alignment: .bottom) {
                    Image(category.imageName!)
                        .resizable()
                        .frame(height: 300)
                        .scaledToFill()

                    Text(category.name)
                        .padding(8)
                        .font(.title3)
                        .foregroundColor(.black)
                        .background(.white.opacity(0.7))
                        .clipShape(RoundedRectangle(cornerRadius: 20))
                        .offset(y: -45)
                }
            }
            .buttonStyle(PlainButtonStyle())

        }
}

struct CategoryTab_Previews: PreviewProvider {
    static let categories: [Category] = Bundle.main.decode("categories.json")
    
    static var previews: some View {
        CategoryTabView(category: categories[0])
            .previewLayout(.sizeThatFits)
    }
}
