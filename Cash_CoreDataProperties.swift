//
//  Cash+CoreDataProperties.swift
//  Holdy
//
//  Created by Oksana Kaledina on 28.07.2022.
//
//

import Foundation
import CoreData


extension Cash {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Cash> {
        return NSFetchRequest<Cash>(entityName: "Cash")
    }

    @NSManaged public var id: UUID?
    @NSManaged public var currency: Cash?
    @NSManaged public var money: NSSet?

}

// MARK: Generated accessors for money
extension Cash {

    @objc(addMoneyObject:)
    @NSManaged public func addToMoney(_ value: Cash)

    @objc(removeMoneyObject:)
    @NSManaged public func removeFromMoney(_ value: Cash)

    @objc(addMoney:)
    @NSManaged public func addToMoney(_ values: NSSet)

    @objc(removeMoney:)
    @NSManaged public func removeFromMoney(_ values: NSSet)

}

extension Cash : Identifiable {

}
