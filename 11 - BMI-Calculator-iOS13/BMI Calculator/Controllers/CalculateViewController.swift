//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class CalculateViewController: UIViewController {

    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    
    var calc = Calculator()
    
    @IBAction func heightSlider(_ sender: UISlider) {
        calc.setHeight(sender.value)
        updateUI()
    }
    
    @IBAction func weightSlider(_ sender: UISlider) {
        calc.setWeight(sender.value)
        updateUI()
    }
    
    func updateUI() {
        heightLabel.text = calc.getHeight()
        weightLabel.text = calc.getWeight()
    }
    
    @IBAction func calculateButton(_ sender: UIButton) {
        calc.calculateBmi()
        self.performSegue(withIdentifier: "goToResult", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult" {
            let destinationVC = segue.destination as! ResultViewController
            destinationVC.bmiValue = calc.getBmi()
            destinationVC.advice = calc.getAdvice()
            destinationVC.color = calc.getColor()
        }
    }
}

