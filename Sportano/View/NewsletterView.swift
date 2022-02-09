//
//  NewsletterView.swift
//  Sportano
//
//  Created by Dawid Kolasinski on 08/02/2022.
//

import SwiftUI

struct NewsletterView: View {
    
    private let newsletter: Newsletter = Bundle.main.decode("newsletter.json")
    @State private var email: String = ""
    
    var body: some View {
        
        ZStack {
            Color("AccentColor")
                .edgesIgnoringSafeArea(.horizontal)
            
            VStack {
                VStack(alignment: .leading, spacing: 10) {
                    Text(newsletter.header)
                        .font(.title2)
                    Text(newsletter.subheader)
                        .font(.headline)
                    Text(newsletter.note)
                        .font(.caption)
                        
                        
                }
                .foregroundColor(.white)
                .multilineTextAlignment(.leading)
                
                
                HStack(alignment: .center, spacing: 10) {
                    TextField(newsletter.textPlaceHolder, text: $email)
                        .padding()
                        .frame(width: 170, height: 50)
                        .background(.white)
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                    
                    Button {
                        //sign to newsletter with binding
                    } label: {
                        Text(newsletter.buttonText)
                            .padding()
                            .frame(width: 170, height: 50)
                            .background(Color("customLightOrange"))
                            .clipShape(RoundedRectangle(cornerRadius: 10))
                        
                    }
                    
                        
                        
                }
                .foregroundColor(.white)
                
            }
         
            
            
        }
        
        
    }
}

struct NewsletterView_Previews: PreviewProvider {
    static let newsletter: Newsletter = Bundle.main.decode("newsletter.json")
    
    static var previews: some View {
        NewsletterView()
            .frame(height: 300)
    }
}
