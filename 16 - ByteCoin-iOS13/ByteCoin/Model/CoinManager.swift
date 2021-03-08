//
//  CoinManager.swift
//  ByteCoin
//
//  Created by Angela Yu on 11/09/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import Foundation

protocol CoinManagerDelegate {
    func didFailWithError(error: Error)
    func didUpdate(_ coinManager: CoinManager, coin: CoinModel )
}

extension CoinManagerDelegate {
    func didFailWithError(error: Error) { print(error) }
}

struct CoinManager {
    
    private let baseURL = "https://rest.coinapi.io/v1/exchangerate/BTC"
    private let apiKey = "49E16074-578A-49BC-9076-BA9DA445DE7A"
    
    let currencyArray = ["AUD", "BRL","CAD","CNY","EUR","GBP","HKD","IDR","ILS","INR","JPY","MXN","NOK","NZD","PLN","RON","RUB","SEK","SGD","USD","ZAR"]
    
    var delegate: CoinManagerDelegate?
    
    func getCoinPrice(for currency: String) {
        let url = "\(baseURL)/\(currency)?apikey=\(apiKey)"
        fetch(url)
    }
    
    private func fetch(_ urlString: String) {
        if let url = URL(string: urlString) {
            let session = URLSession(configuration: .default)
            let task = session.dataTask(with: url) { (data, response, error) in
                if let e = error {
                    self.delegate?.didFailWithError(error: e)
                    return
                }
                
                if let d = data {
                    if let coin = self.parse(d) {
                        self.delegate?.didUpdate(self, coin: coin)
                    }
                }
            }
            task.resume()
        }
    }
    
    private func parse(_ data: Data) -> CoinModel? {
        let decoder = JSONDecoder()
        
        do {
            let decoded = try decoder.decode(CoinData.self, from: data)
            
            let coin = CoinModel(
                rate: decoded.rate
            )
            
            return coin
            
        } catch {
            self.delegate?.didFailWithError(error: error)
            return nil
        }
    }
}
