//
//  CalculatorButtons.swift
//  Calculator
//
//  Created by Natalie Hall on 8/26/21.
//

import UIKit

class CalculateButton: UIButton {
    override func awakeFromNib() {
        super.awakeFromNib()
        setupView()
    }
    
    func setupView() {
        self.layer.masksToBounds = true
        self.backgroundColor = .theSecondColor
        self.setTitleColor(.theFirstColor, for: .normal)
        self.titleLabel?.font = .poppinsBold
        self.titleLabel?.font.withSize(24)
    }
}

class ResetButton: UIButton {
    override func awakeFromNib() {
        super.awakeFromNib()
        setupView()
    }
    
    func setupView() {
        self.layer.masksToBounds = true
        self.backgroundColor = .theFirstColor
        self.setTitleColor(.theSecondColor, for: .normal)
        self.titleLabel?.font = .poppinsBold
        self.titleLabel?.font.withSize(24)
    }
}
