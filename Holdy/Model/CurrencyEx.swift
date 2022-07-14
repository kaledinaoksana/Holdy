//
//  CurrencyEx.swift
//  Holdy
//
//  Created by Oksana Kaledina on 14.07.2022.
//

import Foundation

struct CurrencyEx: Codable {
    var success: Bool
    var base: String
    var date: String
    var rates = [String: Double]()
}
