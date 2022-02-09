//
//  SignInView.swift
//  Sportano
//
//  Created by Dawid Kolasinski on 08/02/2022.
//

import SwiftUI

struct SignInView: View {
    
    private let loginUrlString: String = "https://sportano.pl/customer/account/login/referer/aHR0cHM6Ly9zcG9ydGFuby5wbC9ndWVzdHdpc2gvaW5kZXgvaW5kZXgv/"
    
    private let registerUrlString: String = "https://sportano.pl/customer/account/create/"
    
    var body: some View {
        
        VStack {
            
            Text("Konto")
                .font(.title)
                .fontWeight(.bold)
                .padding(4)
            
            Text("Zaloguj się lub utwórz darmowe konto")
                .font(.footnote)
                .padding(4)
            
            
            
            GroupBox {
                HStack {
                    
                    Link(destination: URL(string: loginUrlString)!, label: {
                        Text("Zaloguj się")
                        Image(systemName: "person")
                        
                    })
                        .frame(width: 150)
                    
                }//HStack
                
            }//GroupBox
            
            GroupBox {
                HStack {
                    
                    Link(destination: URL(string: registerUrlString)!, label: {
                        Text("Załóż konto")
                        Image(systemName: "person.badge.plus")
                        
                    })
                        .frame(width: 150)
                }//HStack
            }//GroupBox
            .padding(.bottom, 8)
        }//VStack
        
    }//Body
}

struct SignInView_Previews: PreviewProvider {
    static var previews: some View {
        SignInView()
    }
}
