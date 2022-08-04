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
    
    var currencyOff = CurrencyOff.getCurrency()
    
    var body: some View {
        
        ZStack{
                
                Color.secondarySystemBackground
                    .ignoresSafeArea()
            
                VStack{
                    List{
                        ForEach(cashArray, id: \.self){ cash in
                            
                            Section(header: Text(cash.wrappedExchange) ) {
                                ForEach(cash.cashList, id: \.self) { money in
                                    Text("\(money.newCash)")
                                }
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
                        money1.cashWallet?.currency = Currency(context: self.moc)
                        money1.cashWallet?.exchange = "EUR"
                        if let found = currencyOff.first(where: {$0.exchange.rawValue == "EUR"}) {
                            money1.cashWallet?.currency?.label = found.label.rawValue
                            money1.cashWallet?.currency?.flag = found.flag.rawValue
                            money1.cashWallet?.currency?.figure = found.figure.rawValue
                        }
                        
                        let money2 = Money(context: self.moc)
                        money2.newCash = 13020.3
                        money2.date = Date()
                        money2.cashWallet = Cash(context: self.moc)
                        money2.cashWallet?.currency = Currency(context: self.moc)
                        money2.cashWallet?.exchange = "EUR"
                        if let found = currencyOff.first(where: {$0.exchange.rawValue == "EUR"}) {
                            money2.cashWallet?.currency?.label = found.label.rawValue
                            money2.cashWallet?.currency?.flag = found.flag.rawValue
                            money2.cashWallet?.currency?.figure = found.figure.rawValue
                        }

                        let money3 = Money(context: self.moc)
                        money3.newCash = 143320.3
                        money3.date = Date()
                        money3.cashWallet = Cash(context: self.moc)
                        money3.cashWallet?.currency = Currency(context: self.moc)
                        money3.cashWallet?.exchange = "RUS"
                        if let found = currencyOff.first(where: {$0.exchange.rawValue == "RUS"}) {
                            money3.cashWallet?.currency?.label = found.label.rawValue
                            money3.cashWallet?.currency?.flag = found.flag.rawValue
                            money3.cashWallet?.currency?.figure = found.figure.rawValue
                        }

                        let money4 = Money(context: self.moc)
                        money4.newCash = 140.3
                        money4.date = Date()
                        money4.cashWallet = Cash(context: self.moc)
                        money4.cashWallet?.currency = Currency(context: self.moc)
                        money4.cashWallet?.exchange = "GEL"
                        if let found = currencyOff.first(where: {$0.exchange.rawValue == "GEL"}) {
                            money4.cashWallet?.currency?.label = found.label.rawValue
                            money4.cashWallet?.currency?.flag = found.flag.rawValue
                            money4.cashWallet?.currency?.figure = found.figure.rawValue
                        }

                        try? self.moc.save()

                    }

                }
        }
    
    }
}

struct ExapmleView_Previews: PreviewProvider {

    
    static var previews: some View {
        
        let context = StorageManager.shared.persistentContainer.viewContext
       
        return  ExapmleView().environment(\.managedObjectContext, context)
        
    }
}
