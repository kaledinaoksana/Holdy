//
//  EditCashView.swift
//  Holdy
//
//  Created by Oksana Kaledina on 14.07.2022.
//

import SwiftUI

struct EditCashView: View {
    
    @Environment(\.dismiss) var dismiss
    @Environment(\.managedObjectContext) var moc
    
    let cashModel: FetchedResults<Cash>.Element
    
    @State var newCash: Double = 0.0
    var cur = CurrencyManager.shared.listOfCurrency
    
    private var cashText: String{
        "\(cashModel.sumCashList)"
    }

    @FocusState private var isInputActive: Bool
    @State private var isNavigationBarHidden: Bool = true
    @State private var isCurrencyHidden: Bool = false
    @State private var isSaveDisabled: Bool = true
    
    var body: some View {
       
        NavigationView{
                    
            ZStack{
                Color.secondarySystemBackground
                    .ignoresSafeArea()
                
                VStack{
                    HStack(){
                        Spacer()
                        
                        Button (action: saveCash) { //Save newCash in DB
                            Text("Save")
                                .font(Font.system(size: UIFontMetrics.default.scaledValue(for: 17)))
                                .bold()
                                .foregroundColor(isSaveDisabled ? Color.gray: Color.blue)
                        }
                        .disabled(isSaveDisabled)
                    
                    }
                    .padding(EdgeInsets(top: 10,
                                        leading: 0,
                                        bottom: 10,
                                        trailing: 0))
                    
                    VStack(spacing: 8){
                        HStack{
                            Text("Balance")
                                .font(Font.system(size: UIFontMetrics.default.scaledValue(for: 17)))
                                .bold()
                            Spacer()
                        }
                        .padding(.top)
                        
                        
                        if !isCurrencyHidden {
                            EditCashListItem(
                                exchange: cashModel.wrappedExchange,
                                flag: cashModel.currency?.wrappedFlag ?? "none",
                                newCash: $newCash,
                                cashTextValue: cashText
                            )
                                .focused($isInputActive)
                                .toolbar {
                                    ToolbarItemGroup(placement: .keyboard){
                                        Spacer()
                                        Button("Done"){
                                            isInputActive = false
                                            isSaveDisabled = false
                                        }
                                    }
                                }
                        }
                        
                    }
                  
                    Spacer()
                    
                    DeleteButtonView(){
                        deleteCash()
                    }
                    .padding()
                }
                .padding()
            }//ZStack
            .navigationBarHidden(self.isNavigationBarHidden)
            .onAppear{self.isNavigationBarHidden = true}
            
        }//NavigationView for toolbar
    }//body
    
    
    private func saveCash(){

        moc.delete(cashModel)
    
        let money = Money(context: self.moc)
        money.newCash = newCash
        money.coming = true
        money.date = Date()
        money.cashWallet = Cash(context: self.moc)
        money.cashWallet?.currency = Currency(context: self.moc)
        money.cashWallet?.exchange = cashModel.wrappedExchange
        if let found = cur.first(where: {$0.exchange.rawValue == cashModel.wrappedExchange}) {
            money.cashWallet?.currency?.label = found.label.rawValue
            money.cashWallet?.currency?.flag = found.flag.rawValue
            money.cashWallet?.currency?.figure = found.figure.rawValue
        }
            
        try? self.moc.save()
        
        dismiss()
    }
    
    private func deleteCash(){

        isSaveDisabled = false
        isCurrencyHidden = true
        moc.delete(cashModel)
        
        dismiss()
    }
    
    
}//View

    
    
//struct EditCashView_Previews: PreviewProvider {
//    static var previews: some View {
//
////.previewInterfaceOrientation(.portraitUpsideDown)
//
//        let context = StorageManager.shared.persistentContainer.viewContext
//
//        return  Group {
//            EditCashView(exchange: "GEL", cash: .constant(2746.76), newCash: 2746.76, flag: "GE").environment(\.managedObjectContext, context)
//            //.previewInterfaceOrientation(.landscapeLeft)
//            //WalletView().environment(\.managedObjectContext, context)
//        }
//    }
//}
