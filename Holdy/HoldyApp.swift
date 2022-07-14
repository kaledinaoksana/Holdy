//
//  HoldyApp.swift
//  Holdy
//
//  Created by Oksana Kaledina on 12.07.2022.
//

import SwiftUI

@main
struct HoldyApp: App {
    //let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            WalletView()
               // .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
