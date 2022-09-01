//
//  Cash+CoreDataProperties.swift
//  Holdy
//
//  Created by Oksana Kaledina on 28.07.2022.
//
//

import Foundation
import CoreData


extension Money {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Money> {
        return NSFetchRequest<Money>(entityName: "Money")
    }

    @NSManaged public var coming: Bool
    @NSManaged public var date: Date?
    @NSManaged public var descript: String?
    @NSManaged public var newCash: Double
    @NSManaged public var cashWallet: Cash?

}

extension Money : Identifiable {

}
