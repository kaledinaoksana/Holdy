//
//  ButtomSheetView.swift
//  Holdy
//
//  Created by Oksana Kaledina on 20.07.2022.
//

import SwiftUI

struct MainButtomSheetView: View {
    
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
                    
                    
                    ItemMainButtonSheetView(image: "coin", label: "Cash", color: Color.appGrey) {
                        
                    }
                    ItemMainButtonSheetView(image: "bank", label: "Bank account", color: Color.appGreyBlue) {
                        
                    }
                    ItemMainButtonSheetView(image: "mountain", label: "Saving goal", color: Color.appGreen) {
                        
                    }
                    ItemMainButtonSheetView(image: "discount", label: "Debt", color: Color.appRed) {
                        
                    }
                    ItemMainButtonSheetView(image: "home", label: "Property", color: Color.appBlue) {
                        
                    }
                }
                .padding()
        }
        
        }
        
    }//body
}//view

struct ButtomSheetView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack{
            Color.appGrey
                .ignoresSafeArea()
            MainButtomSheetView()
        }
    }
}