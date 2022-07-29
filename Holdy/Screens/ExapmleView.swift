//
//  ExapmleView.swift
//  Holdy
//
//  Created by Oksana Kaledina on 28.07.2022.
//

import CoreData
import SwiftUI

struct ExapmleView: View {
    
    @Environment(\.managedObjectContext) var moc
    @FetchRequest(entity: Cash.entity(), sortDescriptors: []) var cashArray: FetchedResults<Cash>
    
    var body: some View {
        
        ZStack{
                
                Color.secondarySystemBackground
                    .ignoresSafeArea()
            
                VStack{
                    List{
                        ForEach(cashArray, id: \.self){ cash in
                            
                            Section(header: Text(cash.wrappedCurrency)) {
//                                ForEach(cash.moneyArray, id: \.self) { money in
//                                    Text("\(money.newCash)")
//                                }
                            }

                        }
                    }
                    
                    Spacer()
                    
                    Button("Add") {

                        let money1 = Money(context: self.moc)
                        money1.newCash = 100.3
                        money1.descript = "afasf"
                        money1.coming = true
                        money1.date = Date()
                        money1.cashWallet = Cash(context: self.moc)
                        money1.cashWallet?.currency = "EUR"

//                        let money2 = Money(context: self.moc)
//                        money2.newCash = 13020.3
//                        money2.date = Date()
//                        money2.cashWallet = Cash(context: self.moc)
//                        money2.cashWallet?.currency = "EUR"
//
//                        let money3 = Money(context: self.moc)
//                        money3.newCash = 143320.3
//                        money3.date = Date()
//                        money3.cashWallet = Cash(context: self.moc)
//                        money3.cashWallet?.currency = "RUS"
//
//                        let money4 = Money(context: self.moc)
//                        money4.newCash = 140.3
//                        money4.date = Date()
//                        money4.cashWallet = Cash(context: self.moc)
//                        money4.cashWallet?.currency = "GEL"

                        try? self.moc.save()

                    }

                }
        }
    
    }
}

struct ExapmleView_Previews: PreviewProvider {

    
    static var previews: some View {
        
        let context = StorageManager.shared.persistentContainer.viewContext
       //Test data
        //context.mergePolicy = NSMergeByPropertyObjectTrumpMergePolicy
              
        return  ExapmleView().environment(\.managedObjectContext, context)
        
        
        //ExapmleView()
           // .environment(\.managedObjectContext, DataController.init().container.viewContext)
        //.environment(\.managedObjectContext, StorageManager.shared.viewContext)
    }
}
