//
//  ViewController.swift
//  Tipsy
//
//  Created by Angela Yu on 09/09/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class CalculatorViewController: UIViewController {
    
    @IBOutlet weak var billTextField: UITextField!
    @IBOutlet weak var zeroPctButton: UIButton!
    @IBOutlet weak var tenPctButton: UIButton!
    @IBOutlet weak var twentyPctButton: UIButton!
    @IBOutlet weak var splitNumberLabel: UILabel!
    
    var bill = Bill()
    
    @IBAction func tipChanged(_ sender: UIButton) {
        billTextField.endEditing(true)
        
        zeroPctButton.isSelected = false
        tenPctButton.isSelected = false
        twentyPctButton.isSelected = false
        
        if sender.currentTitle == "0%" {
            zeroPctButton.isSelected = true
            bill.setPercent(0.0)
        }
        
        if sender.currentTitle == "10%" {
            tenPctButton.isSelected = true
            bill.setPercent(0.1)
        }
        
        if sender.currentTitle == "20%" {
            twentyPctButton.isSelected = true
            bill.setPercent(0.2)
        }
        
        updateUI()
    }
    
    @IBAction func stepperValueChanged(_ sender: UIStepper) {
        billTextField.endEditing(true)
        bill.setPeople(sender.value)
        updateUI()
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        bill.setValue(billTextField.text ?? "")
        print(bill.calculateBill())
        
        self.performSegue(withIdentifier: "goToResults", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "goToResults" {
            
            let destinationVC = segue.destination as! ResultsViewController
            destinationVC.result = String(format: "%.2f", bill.calculateBill())
            destinationVC.tip = Int(bill.percent * 100)
            destinationVC.split = bill.people
        }
    }
    
    func updateUI() {
        splitNumberLabel.text = bill.getPeople()
    }
    
}
