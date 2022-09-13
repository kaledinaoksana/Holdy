//
//  BankAccountView.swift
//  Holdy
//
//  Created by Oksana Kaledina on 30.08.2022.
//

import SwiftUI

struct BankAccountView: View {
    
    @Binding var isPresented: Bool
    var addBankIsOff: Bool
    let appPref = AppPreferences.getPreferences()
    
    var body: some View {
        
        ZStack{
            //Color.systemBackground
               // .ignoresSafeArea()
            
            VStack{
                HStack{
                    Button(action: {isPresented.toggle()}){
                        Text("Cancel")
                    }
                    .frame(width: 70, alignment: .leading)
                    
                    Spacer()
                    Text("Bank account")
                        .fontWeight(.semibold)
                    Spacer()
                    Button(action: {}){
                        Text("Add")
                            .fontWeight(.semibold)
                    }
                    .disabled(addBankIsOff)
                    .frame(width: 70, alignment: .trailing)
                }
                .modifier(MainTextLight())
                .padding(.bottom, 26)
                
                
                VStack(spacing: 16){
                    BankCircleImageView(
                        circleD: 88.0, isOn: true, color: .white
                    )
                    
                    Text(addBankIsOff ? "Bank name" : "Solo Bank (BOG)")
                        .bold()
                        .font(Font.system(size: UIFontMetrics.default.scaledValue(for: 28)))
                        .opacity(addBankIsOff ? 0.16 : 1.0)
                }
                .padding(.bottom, 24)

               
                VStack(spacing: 24){
                    VStack(spacing: 8){
                        HStack{
                            Text("Balance")
                                .modifier(MainTextBold())
                            Spacer()
                            
                        }
                        AddCashListItem(
                            exchange: appPref.mainCurrency.exchange.rawValue,
                            flag: appPref.mainCurrency.flag.rawValue,
                            newCash: .constant(0.0)
                        ){
                            //ADD ACTION
                        }
                        
                        AddMoreView()
                    }
                    
                    
                    VStack(spacing: 8){
                        HStack{
                            Text("Cards")
                                .modifier(MainTextBold())
                            Spacer()
                            
                        }
                        
                       CardView()
                       AddMoreView()
                        
                    }
                }
                Spacer()
            }
        }//ZStack
        .padding()
        
    }
}

struct BankAccountView_Previews: PreviewProvider {
    static var previews: some View {
        BankAccountView(isPresented: .constant(true), addBankIsOff: true)
    }
}


