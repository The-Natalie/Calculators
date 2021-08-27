//
//  CalculatorTextFields.swift
//  Calculator
//
//  Created by Natalie Hall on 8/26/21.
//

import UIKit

class CalculatorTextFields: UITextField {
    override func awakeFromNib() {
        super.awakeFromNib()
        setupView()
    }
    
    func setupView() {
        self.font = .poppinsBold
        self.textColor = .theFirstColor
    }
}
