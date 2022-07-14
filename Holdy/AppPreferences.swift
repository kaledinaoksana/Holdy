//
//  AppPreferences.swift
//  Holdy
//
//  Created by Oksana Kaledina on 12.07.2022.
//

import Foundation

struct AppPreferences{
    var mainCurrency: Currency
    var mainCash: Double
    
    static func getPreferences() -> AppPreferences {
        AppPreferences(mainCurrency: Currency(label: .US, figure: .US, exchange: .US, flag: .US), mainCash: 0.0)
        //AppPreferences(mainCurrency: Currency(label: .RU, figure: .RU, exchange: .RU, flag: .RU))
    }
    
}
