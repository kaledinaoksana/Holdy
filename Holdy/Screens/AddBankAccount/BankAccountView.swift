//
//  BankAccountView.swift
//  Holdy
//
//  Created by Oksana Kaledina on 30.08.2022.
//

import SwiftUI

struct BankAccountView: View {
    var body: some View {
        
        ZStack{
            Color.systemBackground
                .ignoresSafeArea()
            
            VStack{
                HStack{
                    Button(action: {}){
                        Text("Cancel")
                    }
                    Spacer()
                    Text("Bank account")
                    Spacer()
                    Button(action: {}){
                        Text("Cancel")
                    }
                }
                .padding()
                Spacer()
                
            }
        }//ZStack
        
    }
}

struct BankAccountView_Previews: PreviewProvider {
    static var previews: some View {
        BankAccountView()
    }
}
