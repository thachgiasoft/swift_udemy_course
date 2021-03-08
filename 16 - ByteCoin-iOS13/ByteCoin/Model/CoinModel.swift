//
//  CoinModel.swift
//  ByteCoin
//
//  Created by Shin on 08/03/21.
//  Copyright © 2021 The App Brewery. All rights reserved.
//

import Foundation

struct CoinModel{
    let rate: Float
    
    var value: String {
        return String(format: "%.2f", self.rate)
    }
}
