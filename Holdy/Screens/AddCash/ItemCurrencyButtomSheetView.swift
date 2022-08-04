//
//  ItemCurrencyButtomSheetView.swift
//  Holdy
//
//  Created by Oksana Kaledina on 20.07.2022.
//

import SwiftUI

struct ItemCurrencyButtomSheetView: View {
    
    @State var currency: CurrencyOff
    @Binding var cur: [CurrencyOff]

        var body: some View {
            
            HStack(spacing: 12){
                
                Button(action: isOnToggle){
                    ZStack{
                        Image(currency.flag.rawValue)
                            .resizable()
                            .frame(width: 21.0/15*32, height: 15.0/15*32)
                            .clipShape(Circle())
                    }
                   
                    VStack(alignment: .leading, spacing: 0.0){
                        Text(currency.exchange.rawValue)
                            .font(Font.system(size: UIFontMetrics.default.scaledValue(for: 15)))
                            .bold()
                            .foregroundColor(.black)
                        Text("\(currency.label.rawValue) (\(currency.figure.rawValue))")
                            .font(Font.system(size: UIFontMetrics.default.scaledValue(for: 12)))
                            .bold()
                            .foregroundColor(Color.tertiaryLabel)
                    }
                   
                    
                    Spacer()
                    
                    if currency.isOn{
                        ZStack{
                            Circle()
                                .frame(width: 24, height: 24)
                                .foregroundColor(Color.systemFill)
                            Image("yes")
                                .resizable()
                                .frame(width: 10.5, height: 8.25)
                                .foregroundColor(.white)
                            
                        }
                    }
                   
                }
                
               
            }
           
  
    }
    
    
    private func isOnToggle() {
        
        for item in 0...cur.count-1 {
            cur[item].isOn = false
        }
       
        if let ind = cur.firstIndex(where: {$0.exchange.rawValue == currency.exchange.rawValue}){
            cur[ind].isOn = true
        }
    }
    
}

//struct ItemCurrencyButtomSheetView_Previews: PreviewProvider {
//    static var previews: some View {
//        ItemCurrencyButtomSheetView( currency: CurrencyOff(label: .RU, figure: .RU, exchange: .RU, flag: .RU, isOn: true), cur: .const( CurrencyManager.shared.listOfCurrency) )
//    }
//}
