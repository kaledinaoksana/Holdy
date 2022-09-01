//
//  CashModel.swift
//  HoldyApp
//
//  Created by Oksana Kaledina on 11.07.2022.
//

import Foundation
import SwiftUI

struct CashModel: Identifiable{
    
    let id: Int
    let currency: CurrencyOff
    let cashList: [Double]
    var sumCashList: Double {
        cashList.reduce(0, { $0 + $1 })
    }
    
    static func getCash() -> [CashModel] {
        [
            CashModel(
                id: 0,
                currency: CurrencyOff(label: .RU, figure: .RU, exchange: .RU, flag: .RU),
                cashList: [400.0]),
            
            CashModel(
                id: 1,
                currency: CurrencyOff(label: .EU, figure: .EU, exchange: .EU, flag: .EU),
                cashList: [6359.0]),
            
            CashModel(
                id: 2,
                currency: CurrencyOff(label: .GE, figure: .GE, exchange: .GE, flag: .GE),
                cashList: [8012.0]),
            
            CashModel(
                id: 3,
                currency: CurrencyOff(label: .US, figure: .US, exchange: .US, flag: .US),
                cashList: [1054.0])
        ]
        
    }
}


struct CurrencyOff: Hashable{

    let label: LabelCurrency
    let figure: FigureCurrency
    let exchange: ExchangeCurrency
    let flag: FlagCurrency
    var isOn: Bool = false
    
    static func getCurrency() -> [CurrencyOff] {
        [
            CurrencyOff(label: .RU, figure: .RU, exchange: .RU, flag: .RU),
            CurrencyOff(label: .EU, figure: .EU, exchange: .EU, flag: .EU),
            CurrencyOff(label: .GE, figure: .GE, exchange: .GE, flag: .GE),
            CurrencyOff(label: .US, figure: .US, exchange: .US, flag: .US)
        ]
        
    }
    
    
}


enum LabelCurrency: String {
    case RU = "Russian Rubles"
    case EU = "Euro"
    case GE = "Georgian Lari"
    case US = "United States Dollar"
}

enum FigureCurrency: String{
    case RU = "₽"
    case EU = "€"
    case GE = "₾"
    case US = "$"
}

enum ExchangeCurrency: String {
    case RU = "RUB"
    case EU = "EUR"
    case GE = "GEL"
    case US = "USD"
}

enum FlagCurrency: String {
    case RU = "RU"
    case EU = "EU"
    case GE = "GE"
    case US = "US"
}
