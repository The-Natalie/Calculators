//
//  CalculatorColorViews.swift
//  Calculator
//
//  Created by Natalie Hall on 8/26/21.
//

import UIKit

class CalculatorColorViews: UIView {
    override func awakeFromNib() {
        super.awakeFromNib()
        setupView()
    }
    
    func setupView() {
        self.layer.masksToBounds = true
        self.backgroundColor = .theFirstColor
    }
}
