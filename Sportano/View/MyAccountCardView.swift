//
//  MyAccountCardView.swift
//  Sportano
//
//  Created by Dawid Kolasinski on 08/02/2022.
//

import SwiftUI

struct MyAccountCardView: View {
    
    let header: String
    let text: String
    let buttonText: String
    
    var body: some View {
        ZStack {
            
            VStack(alignment: .leading, spacing: 20) {
                
                Text(header)
                    .font(.title2)
                
                Text(text)
                    .font(.subheadline)
                
                
                Button {
                    //
                } label: {
                    Text(buttonText)
                        .padding(8)
                        .background(Color("customLightOrange"))
                        .foregroundColor(.white)
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                }
                
            }//VStack

        }//ZStack
        .padding()
        .frame(maxWidth: .infinity, maxHeight: 200, alignment: .leading)

    }
    
}

struct MyAccountCardView_Previews: PreviewProvider {
    static let myAccountCards: [MyAccountCard] = Bundle.main.decode("myaccountcards.json")
    
    static var previews: some View {
        MyAccountCardView(header: myAccountCards[0].header, text: myAccountCards[0].text, buttonText: myAccountCards[0].buttonText)
            .previewLayout(.sizeThatFits)
    }
}
