//
//  ButtomSheet.swift
//  Holdy
//
//  Created by Oksana Kaledina on 20.07.2022.
//

import SwiftUI

struct MainButtomSheet: View {
  
    @Binding var show: Bool
    
    var openHeight = UIScreen.main.bounds.size.height/2 - Constants.sheetHeight/2
    var closeHeight = UIScreen.main.bounds.size.height/2 + Constants.sheetHeight/2
    
    var body: some View {
     
        
        
//            Color.black.opacity(show ? 0.48 : 0.0).ignoresSafeArea()
//                .gesture(TapGesture()
//                        .onEnded{show = false}
//                 )
//      
//    
        
        MainButtomSheetView()
            .offset(y: show ? openHeight : closeHeight)
            .ignoresSafeArea()
        
        }//body
    }//view


struct ButtomSheet_Previews: PreviewProvider {
    static var previews: some View {
        ZStack{
            Color.appGrey
                .ignoresSafeArea()
            
            MainButtomSheet(show: .constant(true))
        }
       
    }
}
