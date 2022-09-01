//
//  Cash+CoreDataProperties.swift
//  Holdy
//
//  Created by Oksana Kaledina on 28.07.2022.
//
//

import Foundation
import CoreData


extension Currency {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Currency> {
        return NSFetchRequest<Currency>(entityName: "Currency")
    }

    @NSManaged public var exchange: String?
    @NSManaged public var figure: String?
    @NSManaged public var flag: String?
    @NSManaged public var label: String?
    @NSManaged public var cashCurrency: Cash?

}

extension Currency : Identifiable {

}
