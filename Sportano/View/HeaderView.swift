//
//  HeaderView.swift
//  Sportano
//
//  Created by Dawid Kolasinski on 06/02/2022.
//

import SwiftUI

struct HeaderView: View {
    
    private var backgrounds: [String] = ["man", "woman", "kid"]
    private var mainCategories: [String] = ["mężczyźni", "kobiety", "dzieci"]

    
    var body: some View {
        ZStack(alignment: .topLeading) {
            Image(backgrounds.randomElement() ?? "man")
                .resizable()
                .frame(height: 250)
                .opacity(1.0)
                .scaledToFill()
                .brightness(-0.2)
            
            VStack(alignment: .leading) {
                Text("Świat sportu na najwyższym poziomie")
                    .font(.title2)
                    .fontWeight(.heavy)
                    .foregroundColor(.white)
                    .frame(width: 200)
                    .multilineTextAlignment(.leading)
                    .padding(.top, 8)
                
                
                ForEach(0..<mainCategories.count) { index in
                    HeaderButtonView(text: mainCategories[index])
                        .padding(.leading, 8)
                    
                }
                
                
            }//VStack
            .cornerRadius(10)
            
        }//ZStack
        .cornerRadius(10)
        
    }
    
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView()
    }
}



struct HeaderButtonView: View {
    
    let text: String
    
    var body: some View {
        
        
        NavigationLink(destination: ShopView(categoryName: text)) {
            Text(text)
                .frame(width: 100)
                .padding(8)
                .font(.title3)
                .foregroundColor(.black)
                .background(.white.opacity(0.9))
                .clipShape(RoundedRectangle(cornerRadius: 20))
        }
        
                
        
    }
}

