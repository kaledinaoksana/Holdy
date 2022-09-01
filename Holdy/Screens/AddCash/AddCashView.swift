//
//  AddCashView.swift
//  Holdy
//
//  Created by Oksana Kaledina on 20.07.2022.
//

import SwiftUI

struct AddCashView: View {
    
    @Environment(\.managedObjectContext) var moc
    
    let preferences = AppPreferences.getPreferences()
    
    var exchange: String {
        if let ind = cur.firstIndex(where: {$0.isOn == true}){
            return cur[ind].exchange.rawValue
        }
        return preferences.mainCurrency.exchange.rawValue
    }
    
    var flag: String{
       if let ind = cur.firstIndex(where: {$0.isOn == true}){
           return cur[ind].flag.rawValue
       }
        return preferences.mainCurrency.flag.rawValue
   }
    
    
    @State var newCash: Double = 0.0
    @State var cur = CurrencyManager.shared.listOfCurrency

    @Binding var isPresented: Bool
    @FocusState private var isInputActive: Bool
    @State private var isNavigationBarHidden: Bool = true
    @State private var isCurrencyHidden: Bool = false
    @State private var isSaveDisabled: Bool = true
    @State var isShowingSheet = false
    
    
    var body: some View {
        NavigationView{
                    
            ZStack{
                Color.secondarySystemBackground
                    .ignoresSafeArea()
                
                VStack{
                    HStack(){
                        
                        Button (action: cancel) {
                            Text("Cancel")
                                .font(Font.system(size: UIFontMetrics.default.scaledValue(for: 17)))
                                .foregroundColor(Color.blue)
                        }
                        
                        Spacer()
                        Text("Cash")
                            .font(Font.system(size: UIFontMetrics.default.scaledValue(for: 17)))
                            .bold()
                        
                        Spacer()
                        
                        Button (action: addCash) { //Save newCash in DB
                            Text("Add")
                                .font(Font.system(size: UIFontMetrics.default.scaledValue(for: 17)))
                                .bold()
                                .foregroundColor(isSaveDisabled ? Color.gray: Color.blue)
                        }
                        .disabled(isSaveDisabled)
                    
                    } //HStack - navigation bar
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
                            AddCashListItem(
                                exchange: exchange,
                                flag: flag,
                                newCash: $newCash
                            ){
                                if let ind = cur.firstIndex(where: {$0.exchange.rawValue == exchange}){
                                    cur[ind].isOn = true
                                }
                                withAnimation(Constants.anim) { isShowingSheet = true }
                                
                            }
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
                            
                          
                            
                        }//if
                    }//VStack
                  
                    Spacer()
                    
                   
                   
                }//VStack
                .padding()
                
                
                
                withAnimation(.easeOut) {
                    Color
                        .black
                        .opacity(isShowingSheet ? 0.48 : 0.0)
                        .ignoresSafeArea()
                        .gesture(TapGesture()
                              .onEnded{
                                    withAnimation(Constants.anim) { isShowingSheet = false }
                              }
                        )
                }
                  
                
                CurrencyButtomSheetView(show: $isShowingSheet, cur: $cur)
                    .gesture(DragGesture()
                            .onEnded{ _ in
                                withAnimation(Constants.anim) { isShowingSheet = false
                                }
                            }
                    )
                      
            }//ZStack
            .navigationBarHidden(self.isNavigationBarHidden)
            .onAppear{self.isNavigationBarHidden = true}
            
            
        }//NavigationView for toolbar
    }//body
    
    private func addCash(){
        
        let m = Money(context: self.moc)
        m.newCash = newCash
        m.coming = true
        m.date = Date()
        m.cashWallet = Cash(context: self.moc)
        m.cashWallet?.currency = Currency(context: self.moc)
        m.cashWallet?.exchange = exchange
        if let found = cur.first(where: {$0.exchange.rawValue == exchange}) {
            m.cashWallet?.currency?.label = found.label.rawValue
            m.cashWallet?.currency?.flag = found.flag.rawValue
            m.cashWallet?.currency?.figure = found.figure.rawValue
        }
            
        try? self.moc.save()
        
        isPresented.toggle()
    }
    
    private func cancel(){
        isPresented.toggle()
    }
    
}
//
//struct AddCashView_Previews: PreviewProvider {
//    static var previews: some View {
//
//        let context = StorageManager.shared.persistentContainer.viewContext
//
//        return  AddCashView(exchange: "GEL", flag: "GE", isPresented: .constant(true)).environment(\.managedObjectContext, context)
//        //AddCashView(exchange: "GEL", flag: "GE", isPresented: .constant(true))
//    }
//}
