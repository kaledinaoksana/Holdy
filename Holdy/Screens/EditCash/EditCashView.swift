//
//  EditCashView.swift
//  Holdy
//
//  Created by Oksana Kaledina on 14.07.2022.
//

import SwiftUI

struct EditCashView: View {
    
    
    var body: some View {
        
        ZStack{
            Color.secondarySystemBackground
                .ignoresSafeArea()
            
            VStack{
                HStack(){
                    Spacer()
                    Button {
                        // Action (save the new data)
                    } label: {
                        Text("Save")
                            .font(Font.system(size: UIFontMetrics.default.scaledValue(for: 17)))
                            .bold()
                    }
                
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
                    
                    EditCashListItem(exchange: "GEL", cash: 2746.76, flag: "GE", isChoose: false, cashTextValue: .constant("1345"))
                    
                }
                
                    
                
                Spacer()
                DeleteButton()
            }
            .padding()
            
            
        }//ZStack
    }//body
}//View

    
    
struct EditCashView_Previews: PreviewProvider {
    static var previews: some View {
        EditCashView()
    }
}
