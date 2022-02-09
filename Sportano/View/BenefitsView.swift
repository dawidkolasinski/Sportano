//
//  BenefitsView.swift
//  Sportano
//
//  Created by Dawid Kolasinski on 08/02/2022.
//

import SwiftUI

struct BenefitsView: View {
    
    let benefits: [Benefit] = Bundle.main.decode("benefits.json")
    
    var body: some View {
        
        HStack {
            ForEach(benefits) { benefit in

                VStack(alignment: .center) {
                    
                    Image(systemName: benefit.imageName)
                        .foregroundColor(Color("customLightOrange"))
                        .font(.title)
                    Spacer()
                    Text(benefit.description)
                        .font(.caption)
                        .multilineTextAlignment(.center)
                    Spacer()
                    
                }
                .frame(height: 100)
            }
            
            
        }
    }
}

struct BenefitsView_Previews: PreviewProvider {
    static var previews: some View {
        BenefitsView()
    }
}
