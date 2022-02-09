//
//  ContentView.swift
//  Sportano
//
//  Created by Dawid Kolasinski on 06/02/2022.
//

import SwiftUI



struct ContentView: View {
    
    @State private var queryString: String = ""
    
    var body: some View {
        
        NavigationView {
            
            
            
            ScrollView(showsIndicators: false) {
                HeaderView()
                    .padding()
                    .frame(height: 300)
                    .listRowBackground(Color(.clear))
                    .listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
                    .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.15), radius: 8, x: 2, y: 2)
                
                CategoryListItemView()
                    .padding()
                    .frame(height: 300)
                    .listRowBackground(Color(.clear))
                    .listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
                    .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.15), radius: 8, x: 2, y: 2)
                
                BrandsView()
                    .padding()
                
                BenefitsView()
                    .padding()
                
                
                SportanoDescriptionView()

                
                NewsletterView()
                    .padding(.vertical)
                    .frame(height: 300)
                    .edgesIgnoringSafeArea(.horizontal)
                
                
                
            }
            
            
            .navigationBarTitleDisplayMode(.inline)
            .searchable(text: $queryString)
            .toolbar {
                ToolbarItem(placement: .principal) {
                    Image("logo")
                }
            }//NavigationView
            
        }
        
        
        
        
    }//navigationView
    
    
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
