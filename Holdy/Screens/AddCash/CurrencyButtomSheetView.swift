//
//  CurrencyButtomSheetView.swift
//  Holdy
//
//  Created by Oksana Kaledina on 20.07.2022.
//

import SwiftUI

struct CurrencyButtomSheetView: View {
    
    @Binding var show: Bool
    @Binding var cur: [CurrencyOff]
    
   // let currencies = CurrencyManager.shared.listOfCurrency
    var openHeight = UIScreen.main.bounds.size.height/2 - Constants.sheetCurHeight/2
    var closeHeight = UIScreen.main.bounds.size.height/2 + Constants.sheetCurHeight/2
    
    
    
    var body: some View {
        
        ZStack(alignment: .top){
            RoundedRectangle(cornerRadius: Constants.sheetRadius)
                .foregroundColor(Color.white)
                .frame(height: 317)
            
            VStack(spacing: 0){
                VStack(spacing: 18){
                    Image("rect")
                        .resizable()
                        .frame(width: 32, height: 4)
                        .padding(.top, 5)
                    
                    Text("Currency")
                        .font(Font.system(size: UIFontMetrics.default.scaledValue(for: 17)))
                        .bold()
                }
               
                
                VStack(spacing: 16){
                   
                    ForEach(cur, id: \.self) { currency in
                        ItemCurrencyButtomSheetView(currency: currency, cur: $cur)
                    }
                    
                }
                .padding()
            }
        
        }
        .offset(y: show ? openHeight : closeHeight)
        .ignoresSafeArea()
        
    }//body
}//view
//


//struct CurrencyButtomSheetView_Previews: PreviewProvider {
//    static var previews: some View {
//        ZStack{
//            Color.appGrey
//                .ignoresSafeArea()
//            CurrencyButtomSheetView(show: .constant(true))
//        }
//    }
//}
