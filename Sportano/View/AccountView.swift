//
//  AccountView.swift
//  Sportano
//
//  Created by Dawid Kolasinski on 06/02/2022.
//

import SwiftUI

struct AccountView: View {
    
    private let sections = ["Moje konto", "Zamówienia", "Moje zwroty", "Moje adresy"]
    private let myAccountCards: [MyAccountCard] = Bundle.main.decode("myaccountcards.json")
    @State private var selectedSectionIndex = 0
    @State private var isLogged: Bool = true
    @State private var sectionHeader: String = "Moje konto"
    
    var body: some View {
        
        NavigationView {
            VStack(spacing: 2) {
                
                if(!isLogged) {
                    SignInView()
                        .frame(maxWidth: .infinity)
                } else {
                    ZStack {
                        Color("AccentColor")
                        VStack {
                            Image(systemName: "person").font(.title).foregroundColor(.white)
                            Text("Witaj użytkowniku!").font(.title2).fontWeight(.bold).foregroundColor(.white)
                        }
                    }
                    
                    .frame(height:100)
                }
                
                
                Form {
                    Section {
                        
                        ForEach(0..<sections.count) { index in
                            
                            Button {
                                selectedSectionIndex = index
                                sectionHeader = sections[index]
                            } label: {
                                HStack {
                                    
                                    Spacer()
                                    Text(sections[index])
                                        .fontWeight(.heavy)
                                        .foregroundColor(.white)
                                    Spacer()
                                    
                                }
                                
                            }
                            .padding(.bottom, 4)
                            .listRowBackground(index == selectedSectionIndex ? Color("customLightOrange") : Color.accentColor)
                            
                        }
                    }
                    
                    ForEach(0..<myAccountCards.count) { index in
                        Section {
                            MyAccountCardView(header: myAccountCards[index].header, text: myAccountCards[index].text, buttonText: myAccountCards[index].buttonText)
                                .listRowBackground(Color(.white))
                                .listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
                                .listStyle(.plain)
                        }
                    }
                    
                }//LIST
            }//VStack
            
            .navigationBarHidden(true)
        }//Navigation
        
        
        
        
    }
    
    
    
    
    
}



struct AccountView_Previews: PreviewProvider {
    static var previews: some View {
        AccountView()
    }
}
