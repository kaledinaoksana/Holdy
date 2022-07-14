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
                HStack(alignment: .firstTextBaseline){
                    Button("Cancel"){
                        
                    }
                    Spacer()
                    Text("Edit cash")
                        .font(Font.system(size: UIFontMetrics.default.scaledValue(for: 17)))
                        .foregroundColor(Color.label)
                        .bold()
                    
                    Spacer()
                    Button("Save"){
                        
                    }
                }
                .padding(EdgeInsets(top: 10,
                                    leading: 0,
                                    bottom: 10,
                                    trailing: 0))
                
                VStack(spacing: 8){
                    HStack{
                        Text("Balance")
                        Spacer()
                    }
                    .padding(.top)
                    
                    
                    
                }
                
                    
                
                Spacer()
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
