//
//  DataController.swift
//  Holdy
//
//  Created by Oksana Kaledina on 28.07.2022.
//


import CoreData
import Foundation

class DataController: ObservableObject {
    let container = NSPersistentContainer(name: "HoldyA")

    init() {
        container.loadPersistentStores { description, error in
            if let error = error {
                print("Core Data failed to load: \(error.localizedDescription)")
            }
        }
    }
}
