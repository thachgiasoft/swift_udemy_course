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
    
    var height: Float = 1.5
    var weight: Int = 100
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func heightSlider(_ sender: UISlider) {
        height = Float(String(format: "%.2f", sender.value))!
        updateUI()
    }
    
    @IBAction func weightSlider(_ sender: UISlider) {
        weight = Int(sender.value)
        updateUI()
    }
    
    func updateUI() {
        heightLabel.text = "\(height)m"
        weightLabel.text = "\(weight)Kg"
    }
    
    @IBAction func calculateButton(_ sender: UIButton) {
        let bmi = Float(weight) / pow(height, 2)
        

        
    }
}

