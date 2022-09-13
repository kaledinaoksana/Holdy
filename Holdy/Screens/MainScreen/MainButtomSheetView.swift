//
//  ButtomSheetView.swift
//  Holdy
//
//  Created by Oksana Kaledina on 20.07.2022.
//

import SwiftUI

struct MainButtomSheetView: View {
    
    @Binding var show: Bool
    @State var isPresented: Bool = false
    @State var isPresentedBank: Bool = false

    var cur = CurrencyManager.shared.listOfCurrency
    
    var openHeight = UIScreen.main.bounds.size.height/2 - Constants.sheetHeight/2
    var closeHeight = UIScreen.main.bounds.size.height/2 + Constants.sheetHeight/2
    
    var body: some View {
        
        ZStack(alignment: .top){
            RoundedRectangle(cornerRadius: Constants.sheetRadius)
                .foregroundColor(Color.white)
                .frame( height: Constants.sheetHeight)
            
            VStack{
                Image("rect")
                    .resizable()
                    .frame(width: 32, height: 4)
                    .padding(.top, 5)
                
                VStack(spacing: 20){
                    
                    Button(
                        action: {
                            isPresented.toggle()
                            show.toggle()
                        }){
                        ItemMainButtonSheetView(image: "coin", label: "Cash", color: Color.appGrey)
                        
                    }
                    .sheet(isPresented: $isPresented)
                    {
                        AddCashView(
                            isPresented: $isPresented
                        )
                    }
                    
                    
                    Button(action: {
                        isPresentedBank.toggle()
                        show.toggle()
                    }){
                        ItemMainButtonSheetView(image: "bank", label: "Bank account", color: Color.appGreyDark)
                        
                    }
                    .sheet(isPresented: $isPresentedBank)
                    {
                        BankAccountView(
                            isPresented: $isPresentedBank,
                            addBankIsOff: true
                        )
                    }
                    
                    
                    
                    ItemMainButtonSheetView(image: "mountain", label: "Saving goal", color: Color.appGreen)
                    ItemMainButtonSheetView(image: "discount", label: "Debt", color: Color.appRed)
                    ItemMainButtonSheetView(image: "home", label: "Property", color: Color.appBlue)
                }
                .padding()
            }//VStack
        
        }//ZStack
        .offset(y: show ? openHeight : closeHeight)
        .ignoresSafeArea()
        
    }//body
}//view

struct ButtomSheetView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack{
            Color.appGrey
                .ignoresSafeArea()
            MainButtomSheetView(show: .constant(true))
        }
    }
}
