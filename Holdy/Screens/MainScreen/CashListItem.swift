//
//  CashListItem.swift
//  HoldyApp
//
//  Created by Oksana Kaledina on 05.07.2022.
//

import SwiftUI

struct CashListItem: View {
    
    @ObservedObject var cashModel: FetchedResults<Cash>.Element
    
    @State var result = 0.0
    @State private var isPresented = false
    var preferences = AppPreferences.getPreferences()
    
    var cur = CurrencyManager.shared.listOfCurrency
    
    var exchangeCash: Double {
        get {
            Task{
                result.self = await NetworkManager.shared.fetchDataAsync(
                    currencyFetch: preferences.mainCurrency.exchange.rawValue,
                    exchange: cashModel.wrappedExchange,
                    cash: cashModel.sumCashList)
            }
            return result.self
        }
    }
    
    var body: some View {
        
        Button(action: {
            if var found = cur.first(where: {$0.exchange.rawValue == cashModel.wrappedExchange}) {
                found.isOn = true
            }
            isPresented.toggle()
        }) {
            ZStack{
                ZStack{
                    RoundedRectangle(cornerRadius: 10)
                        .fill(Color.secondarySystemBackground)
                               .frame(height: 56)
                    
                    HStack( spacing: 12){
                        Image(cashModel.currency?.wrappedFlag ?? "none")
                            .resizable()
                            .frame(width: 21.0/15*32, height: 15.0/15*32)
                            .clipShape(Circle())
                        
                        VStack(alignment: .leading, spacing: 2){
                            Text(cashModel.currency?.wrappedLabel ?? "none")
                                .font(Font.system(size: UIFontMetrics.default.scaledValue(for: 12)))
                                .fontWeight(.regular)
                                .foregroundColor(.tertiaryLabel)
                            HStack{
                                Text("\(cashModel.currency?.wrappedFigure ?? "none")\(cashModel.sumCashList, specifier: "%.0f")")
                                    .font(Font.system(size: UIFontMetrics.default.scaledValue(for: 15)))
                                    .bold()
                                    .foregroundColor(.label)
                                    .frame(height: 20)
                            
                                if cashModel.currency?.wrappedFlag != preferences.mainCurrency.flag.rawValue {
                                
                                    Text("\(preferences.mainCurrency.figure.rawValue)\(exchangeCash, specifier: "%.0f")")
                                        .font(Font.system(size: UIFontMetrics.default.scaledValue(for: 11)))
                                        .bold()
                                        .frame(height: 20)
                                        .foregroundColor(.secondaryLabel)
                                        .padding(.leading, 6)
                                        .padding(.trailing, 6)
                                        .background(RoundedRectangle(cornerRadius: 34).foregroundColor( Color.black.opacity(0.06)))
                                        .clipped()
                            }
                           
                            Spacer()
                            }
                            
                        }
                        Spacer()
                    }
                    .padding()
                    .frame(width: 343, height: 56)
                }
                
            }
            .ignoresSafeArea()
        }//button
        .sheet(isPresented: $isPresented) {
            EditCashView(cashModel: cashModel)
        }
    }//body
}//cashListItemView



//
//struct CashListItem_Previews: PreviewProvider {
//    static var previews: some View {
//
//
//        //CashListItem(cashModel: )
//    }
//}
