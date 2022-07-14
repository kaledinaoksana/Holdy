//
//  NetworkManager.swift
//  Holdy
//
//  Created by Oksana Kaledina on 14.07.2022.
//

import Foundation
import Alamofire
import SwiftUI

struct CurrencyEx: Codable {
    var success: Bool
    var base: String
    var date: String
    var rates = [String: Double]()
}

enum NetworkError: Error {
    case invalidURL
    case noData
}

class NetworkManager{
    
    static let shared = NetworkManager()
    
    private init() {}
    
    private func apiRequestAsync(url: String) async throws -> CurrencyEx {
        try await withUnsafeThrowingContinuation { continuation in
            Session.default.request(url).responseDecodable(of: CurrencyEx.self) { response in
                switch response.result {
                case .success(let currencies):
                    continuation.resume(returning: currencies)
                case .failure(let error):
                    print(error)
                }
            }
        }
    }
    
    func fetchDataAsync(currencyFetch: String, exchange: String, cash: Double) async -> Double {
            
            var res = 0.0
            let url = "https://api.exchangerate.host/latest?base=\(exchange)&amount=\(cash)"
        
            if currencyFetch != exchange && cash != 0.0 {
                
                    do {
                        let currency = try await self.apiRequestAsync(url:url)
                        for currency in currency.rates {
                            if currencyFetch.contains(currency.key)  {
                                res = currency.value
                            }
                        }
                    } catch {
                        print(error)
                    }
                
            } else {
                res = cash
            }
        
            return res
    }
    
    
    func fetchAllData(cashModels: [CashModel]) async -> Double {

        let currencyFetch = AppPreferences.getPreferences().mainCurrency.exchange.rawValue
       
        
        let allCash = await withTaskGroup(of: Double.self, returning: [Double].self){ group in
             
               var results: [Double] = []
            
               for cashModel in cashModels {
                   group.addTask {
                        return await self.fetchDataAsync(
                        currencyFetch: currencyFetch,
                        exchange: cashModel.currency.exchange.rawValue,
                        cash: cashModel.sumCashList)
                   }
               }
               
               for await result in group {
                   results.append(result)
               }
              
               return results
           }
        
        return allCash.reduce(0, { $0 + $1 })
       
       }
        
   
}
