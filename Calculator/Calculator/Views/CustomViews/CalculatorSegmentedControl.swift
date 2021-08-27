//
//  CalculatorSegmentedControl.swift
//  Calculator
//
//  Created by Natalie Hall on 8/26/21.
//

import UIKit

class CalculatorSegmentedControl: UISegmentedControl {
    override func awakeFromNib() {
        super.awakeFromNib()
        setupView()
    }
    
    func setupView() {
        let font = UIFont.poppinsReg
        
        let normalAttribute: [NSAttributedString.Key: Any] = [.font: font ?? .systemFont(ofSize: 18, weight: .regular), .foregroundColor: UIColor.gray]
        self.setTitleTextAttributes(normalAttribute, for: .normal)
        
        let selectedAttribute: [NSAttributedString.Key: Any] = [.font: font ?? .systemFont(ofSize: 18, weight: .regular), .foregroundColor: UIColor.theFirstColor]
        self.setTitleTextAttributes(selectedAttribute, for: .selected)
        self.backgroundColor = .theSecondColor
        
    }
}
