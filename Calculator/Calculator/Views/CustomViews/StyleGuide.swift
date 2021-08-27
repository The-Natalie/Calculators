//
//  StyleGuide.swift
//  Calculator
//
//  Created by Natalie Hall on 8/26/21.
//

import UIKit

enum FontNames {
    static let poppinsRegularFont = "Poppins-Regular"
    static let poppinsSimiBoldFont = "Poppins-SemiBold"
    static let poppinsBoldFont = "Poppins-Bold"
}

extension UIFont {
    static let poppinsReg = UIFont(name: FontNames.poppinsRegularFont, size: 18)
    static let poppinsSimiBold = UIFont(name: FontNames.poppinsSimiBoldFont, size: 22)
    static let poppinsBold = UIFont(name: FontNames.poppinsBoldFont, size: 22)
}

// This app only has 2 colors, so we'll set them here in case we want to change them later:
extension UIColor {
    // pink: #AA367C
    static let theFirstColor = UIColor(red: 0.67, green: 0.21, blue: 0.49, alpha: 1.00)
    
    // green: #41FFA5
    static let theSecondColor = UIColor(red: 0.25, green: 1.00, blue: 0.65, alpha: 1.00)
}
