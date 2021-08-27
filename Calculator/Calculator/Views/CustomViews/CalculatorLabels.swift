//
//  CalculatorLabels.swift
//  Calculator
//
//  Created by Natalie Hall on 8/26/21.
//

import UIKit

class inputLabels: UILabel {
    override func awakeFromNib() {
        super.awakeFromNib()
        
        self.textColor = .theSecondColor
        updateFont(font: (.poppinsSimiBold ?? .systemFont(ofSize: 22, weight: .semibold)))
    }
    
    func updateFont(font: UIFont) {
        self.font = font
    }
}

class outputLabels: UILabel {
    override func awakeFromNib() {
        super.awakeFromNib()
        
        self.textColor = .theFirstColor
        updateFont(font: (.poppinsSimiBold ?? .systemFont(ofSize: 22, weight: .semibold)))
    }
    
    func updateFont(font: UIFont) {
        self.font = font
    }
}
