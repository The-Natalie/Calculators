//
//  CalculatorsViewController.swift
//  Calculator
//
//  Created by Natalie Hall on 8/16/21.
//
// pink: #AA367C  UIColor(red: 0.67, green: 0.21, blue: 0.49, alpha: 1.00)
// green: #41FFA5  UIColor(red: 0.25, green: 1.00, blue: 0.65, alpha: 1.00)

import UIKit

class CalculatorViewController: UIViewController {
    
    // MARK: - Outlets
    @IBOutlet weak var tipDiscountSegmentedControl: UISegmentedControl!
    @IBOutlet weak var priceLabel: UILabel!
    @IBOutlet weak var priceNumberTextField: UITextField!
    @IBOutlet weak var percentLabel: UILabel!
    @IBOutlet weak var percentNumberTextField: UITextField!
    @IBOutlet weak var tipAmountLabel: UILabel!
    @IBOutlet weak var tipAmountNumberLabel: UILabel!
    @IBOutlet weak var totalNumberLabel: UILabel!
    
    var calculator: Calculator?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // MARK: - Actions
    @IBAction func tipDiscountSegmentedControlTapped(_ sender: Any) {
        priceNumberTextField.text = ""
        percentNumberTextField.text = ""
        tipAmountNumberLabel.text = "$0"
        totalNumberLabel.text = "$0"
        switch tipDiscountSegmentedControl.selectedSegmentIndex {
        case 0:
            priceLabel.text = "Bill Amount"
            percentLabel.text = "Tip %"
            tipAmountLabel.text = "Tip Amount"
        case 1:
            priceLabel.text = "Price of Item"
            percentLabel.text = "Discount %"
            tipAmountLabel.text = "You Saved"
        default:
            break
        }
    }
    
    @IBAction func calculateButtonTapped(_ sender: Any) {
        guard let priceInputText = priceNumberTextField.text,
              let priceInputAmount = Double(priceInputText),
              let percentInputText = percentNumberTextField.text,
              let percentInputAmount = Double(percentInputText) else { return }
        
        let percentOfPrice = priceInputAmount * (percentInputAmount / 100)
        
        let totalAmount: Double
        switch tipDiscountSegmentedControl.selectedSegmentIndex {
        case 0:
            totalAmount = priceInputAmount + percentOfPrice
        case 1:
            totalAmount = priceInputAmount - percentOfPrice
        default:
            return
        }
        
        let stringTipAmount = String(format: "%.2f", percentOfPrice)
        tipAmountNumberLabel.text = "$\(stringTipAmount)"
        
        let stringTotalAmount = String(format: "%.2f", totalAmount)
        totalNumberLabel.text = "$\(stringTotalAmount)"
    }
    
    @IBAction func resetButtonTapped(_ sender: Any) {
        priceNumberTextField.text = ""
        percentNumberTextField.text = ""
        tipAmountNumberLabel.text = "$0"
        totalNumberLabel.text = "$0"
    }
    
}  // End of Class
