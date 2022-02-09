//
//  SportanoDescriptionView.swift
//  Sportano
//
//  Created by Dawid Kolasinski on 08/02/2022.
//

import SwiftUI

struct SportanoDescriptionView: View {
    
    private let description: SportanoDescription = Bundle.main.decode("sportanodescription.json")
    
    var body: some View {
        GroupBox {
            DisclosureGroup(description.header) {
                Text(description.text)
                    .padding()
            }
        }
    }
}

struct SportanoDescriptionView_Previews: PreviewProvider {
    static var previews: some View {
        SportanoDescriptionView()
    }
}
