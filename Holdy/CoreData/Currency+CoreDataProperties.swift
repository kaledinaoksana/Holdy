//
//  Currency+CoreDataProperties.swift
//  Holdy
//
//  Created by Oksana Kaledina on 02.08.2022.
//
//

import Foundation
import CoreData

@objc(Currency)
public class Currency: NSManagedObject  {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Currency> {
        return NSFetchRequest<Currency>(entityName: "Currency")
    }

    @NSManaged public var figure: String?
    @NSManaged public var flag: String?
    @NSManaged public var label: String?
    @NSManaged public var wallet: Cash?
    
    public var wrappedFigure: String {
        figure ?? "RU"
    }
     
    public var wrappedFlag: String {
        flag ?? "none"
    }
    
    public var wrappedLabel: String {
        label ?? "none"
    }

}

//extension Currency : Identifiable {
//
//}
