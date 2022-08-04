//
//  StorageManager.swift
//  Holdy
//
//  Created by Oksana Kaledina on 28.07.2022.
//

import CoreData

class StorageManager {
    
    static let shared = StorageManager()
    
    // MARK: - Core Data stack
    lazy var persistentContainer: NSPersistentContainer = {
       let container = NSPersistentContainer(name: "Holdy")
       
        container.viewContext.mergePolicy = NSMergeByPropertyObjectTrumpMergePolicy
        container.viewContext.automaticallyMergesChangesFromParent = true
        
        container.loadPersistentStores(completionHandler: { (storeDescription, error) in

           if let error = error as NSError? {
               fatalError("Unresolved error \(error), \(error.localizedDescription)")
           }
           
//           container.viewContext.mergePolicy = NSMergeByPropertyObjectTrumpMergePolicy
//           //container.viewContext.mergePolicy = NSMergePolicy.mergeByPropertyObjectTrump
//           container.viewContext.automaticallyMergesChangesFromParent = true
       })
       return container
   }()

    
    
    // MARK: - Public Methods
    
        func save(completion: @escaping (Error?) -> () = {_ in}) {
            if persistentContainer.viewContext.hasChanges {
                do {
                    try persistentContainer.viewContext.save()
                    completion(nil)
                } catch {
                    completion(error)
                }
            }
        }
//
        func delete(_ object: NSManagedObject, completion: @escaping (Error?) -> () = {_ in}) {
            persistentContainer.viewContext.delete(object)
            save(completion: completion)
        }
    
    // MARK: - Core Data Saving support
    func saveContext() {
        if persistentContainer.viewContext.hasChanges {
            do {
                try persistentContainer.viewContext.save()
            } catch {
                let nserror = error as NSError
                fatalError("Unresolved error \(nserror), \(nserror.userInfo)")
            }
        }
    }
    
}
