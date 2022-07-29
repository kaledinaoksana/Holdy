//
//  AppPreferences.swift
//  Holdy
//
//  Created by Oksana Kaledina on 12.07.2022.
//

import Foundation

struct AppPreferences{
    var mainCurrency: CurrencyOff
   // var mainCash: Double
    
    static func getPreferences() -> AppPreferences {
        AppPreferences(mainCurrency: CurrencyOff(label: .US, figure: .US, exchange: .US, flag: .US))
        //AppPreferences(mainCurrency: Currency(label: .RU, figure: .RU, exchange: .RU, flag: .RU))
    }
    
}
