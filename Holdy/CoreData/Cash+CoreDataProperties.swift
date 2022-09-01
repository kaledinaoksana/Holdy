//
//  Cash+CoreDataProperties.swift
//  Holdy
//
//  Created by Oksana Kaledina on 28.07.2022.
//
//

import Foundation
import CoreData

@objc(Cash)
public class Cash: NSManagedObject {}

extension Cash {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Cash> {
        return NSFetchRequest<Cash>(entityName: "Cash")
    }


    @NSManaged public var exchange: String?
    @NSManaged public var currency: Currency?
    @NSManaged public var money: NSSet?

    
    public var cashList: [Money]{
        let set = money as? Set<Money> ?? []
        
        return set.sorted{
            $0.wrappedDate > $1.wrappedDate
        }
    }
    
    public var sumCashList: Double {
        
        var coming = 0.0
        var income = 0.0
        
        for element in cashList {
            if element.coming == true {
                coming += element.newCash
            } else {
                income += element.newCash
            }
        }
        return coming - income
    }
    
    public var wrappedExchange: String {
        exchange ?? "none"
    }

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


