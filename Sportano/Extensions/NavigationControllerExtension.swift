//
//  NavigationControllerExtension.swift
//  Sportano
//
//  Created by Dawid Kolasinski on 08/02/2022.
//

import Foundation
import UIKit

extension UINavigationController {
    open override func viewWillLayoutSubviews() {
        navigationBar.topItem?.backButtonDisplayMode = .minimal
    }
    
    
}
