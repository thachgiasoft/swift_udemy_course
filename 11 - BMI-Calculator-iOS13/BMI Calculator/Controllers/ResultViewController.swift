//
//  ResultViewController.swift
//  BMI Calculator
//
//  Created by Shin on 06/03/21.
//  Copyright © 2021 Angela Yu. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {

    @IBOutlet weak var bmiLabel: UILabel!
    @IBOutlet weak var adviseLabel: UILabel!
    
    var bmiValue: String?
    var color: UIColor?
    var advice: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let bmi = bmiValue {
            bmiLabel.text = bmi
        }
        
        if let text = advice {
            adviseLabel.text = text
        }
        
        if let value = color {
            self.view.backgroundColor = value
        }
    }
    
    @IBAction func recalculatePress(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
}
