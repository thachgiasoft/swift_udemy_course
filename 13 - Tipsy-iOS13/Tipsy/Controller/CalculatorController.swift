//
//  ViewController.swift
//  Tipsy
//
//  Created by Angela Yu on 09/09/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class CalculatorController: UIViewController {
    
    @IBOutlet weak var billText: UITextField!
    @IBOutlet weak var zeroButton: UIButton!
    @IBOutlet weak var tenButton: UIButton!
    @IBOutlet weak var twentyButton: UIButton!
    @IBOutlet weak var splitNumberLabel: UILabel!
    
    var bill = Bill()
    
    @IBAction func tipChange(_ sender: UIButton) {
        billText.endEditing(true)
        
        zeroButton.isSelected = false
        tenButton.isSelected = false
        twentyButton.isSelected = false
        
        if sender.currentTitle == "0%" {
            zeroButton.isSelected = true
            bill.setPercent(0.0)
        }
        
        if sender.currentTitle == "10%" {
            tenButton.isSelected = true
            bill.setPercent(0.1)
        }
        
        if sender.currentTitle == "20%" {
            twentyButton.isSelected = true
            bill.setPercent(0.2)
        }
    }
    
    @IBAction func stepperChange(_ sender: UIStepper) {
        billText.endEditing(true)
        bill.setPeople(sender.value)
        updateUI()
    }
    
    @IBAction func calculatePress(_ sender: UIButton) {
        bill.setValue(billText.text ?? "")
        print(bill.calculateBill())
        
        self.performSegue(withIdentifier: "goToResults", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResults" {
            let destinationVC = segue.destination as! ResultController
//            destinationVC.result = finalResult
//            destinationVC.tip = Int(tip * 100)
//            destinationVC.split = numberOfPeople
        }
    }
    
    func updateUI() {
        splitNumberLabel.text = bill.getPeople()
    }
}

