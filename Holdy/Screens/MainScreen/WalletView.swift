//
//  WalletView.swift
//  HoldyApp
//
//  Created by Oksana Kaledina on 05.07.2022.
//


import SwiftUI
import Combine

struct WalletView: View {

    @Environment(\.managedObjectContext) var moc
    @FetchRequest(entity: Cash.entity(), sortDescriptors: []) var cashArray: FetchedResults<Cash>
    
    let preferences = AppPreferences.getPreferences()
    
    @State var cashExchange = 0.0
    @State var isShowingSheet = false
    
    var sumOfEnt: Double {
        get {
            Task{
                cashExchange.self = await NetworkManager.shared.fetchAllData(cashModels: cashArray)
            }
            return cashExchange.self
        }
    }
    
    let width = 16.0
    
    var body: some View {
        
        ZStack{
            Color.systemBackground
                .ignoresSafeArea()
            
            VStack(spacing: 34){
                
                VStack(alignment: .leading, spacing: 0){
                    
                    Text("Total balance")
                        .fontWeight(.bold)
                        .font(Font.system(size: UIFontMetrics.default.scaledValue(for: 15)))
                        .foregroundColor(.secondaryLabel)
                    
                    HStack(alignment: .firstTextBaseline, spacing:0){
                            Text("\(preferences.mainCurrency.figure.rawValue)\(sumOfEnt, specifier: "%.0f")")
                                .font(Font.system(size: UIFontMetrics.default.scaledValue(for: 34)))
                                .fontWeight(.bold)
                                .foregroundColor(.label)
                            Text(".\(cashExchange.truncatingRemainder(dividingBy: 1)*10, specifier: "%.0f")")
                                .font(Font.system(size: UIFontMetrics.default.scaledValue(for: 28)))
                                .fontWeight(.bold)
                                .foregroundColor(.label)
                                
                            Spacer()
                           
                            AddButtonView(){
                               //ACTION ADD
                            }
                        }
                }
                
                VStack(spacing: 8){
                    HStack{
                        CashImageView(width: width, isOn: false)
                        Text("Cash")
                            .fontWeight(.semibold)
                            .foregroundColor(.label)
                        Spacer()
                    }
                    
                    
                   ForEach(cashArray, id: \.self) { cash in
                           CashListItem(cashModel: cash)
                    }
                }
                    
                HStack{
                    SavingsImageView(width: width, isOn: false)
                    Text("Savings")
                        .fontWeight(.semibold)
                        .foregroundColor(.label)
                    Spacer()
                }
                
                HStack{
                    DebtsImageView(width: width, isOn: false)
                    Text("Debts")
                        .fontWeight(.semibold)
                        .foregroundColor(.label)
                        
                    Spacer()
                }
                
                
                
                Spacer()
                

            }
            .padding()

            ZStack{
                
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
                  
                MainButtomSheetView(show: $isShowingSheet)
                    .gesture(DragGesture()
                            .onEnded{gesture in
                                withAnimation(Constants.anim) { isShowingSheet = false }
                            }
                    )
                }
                
        }//Zstack
        .gesture(DragGesture()
                .onChanged { gesture in
                        withAnimation(Constants.anim) { isShowingSheet = true}
                }
        )
        
            
    }// var body

    
}//WalletView



struct WalletView_Previews: PreviewProvider {
    static var previews: some View {
        
        let context = StorageManager.shared.persistentContainer.viewContext
       
        return  WalletView().environment(\.managedObjectContext, context)
    }
}
