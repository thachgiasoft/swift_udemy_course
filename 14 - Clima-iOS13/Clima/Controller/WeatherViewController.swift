//
//  ViewController.swift
//  Clima
//
//  Created by Angela Yu on 01/09/2019.
//  Copyright © 2019 App Brewery. All rights reserved.
//

import UIKit

class WeatherViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var conditionImageView: UIImageView!
    @IBOutlet weak var temperatureLabel: UILabel!
    @IBOutlet weak var cityLabel: UILabel!
    @IBOutlet weak var searchInput: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        searchInput.delegate = self
    }

    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        searchAction()
        return true
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        searchAction()
    }

    @IBAction func searchPress(_ sender: UIButton) {
        searchAction()
    }
    
    func searchAction() {
        print(searchInput.text ?? "")
        // To some stuff with the value
        
        searchInput.text = ""
        searchInput.endEditing(true)
    }
}

