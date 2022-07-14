//
//  EditCashListItem.swift
//  Holdy
//
//  Created by Oksana Kaledina on 15.07.2022.
//

import SwiftUI

struct EditCashListItem: View {
    
    let exchange: String
    var cash: Double
    let flag: String
    let isChoose: Bool
    @Binding var cashTextValue: String
    
    var body: some View {
       
        ZStack{
            ZStack{
                RoundedRectangle(cornerRadius: 12)
                    .fill(Color.tertiarySystemBackground)
                    .frame(height: 52)
                    .overlay(isChoose ? RoundedRectangle(cornerRadius: 12)
                                .stroke(Color.systemFill, lineWidth: 1) : nil)
                
                
                HStack( spacing: 12){
                    Image(flag)
                        .resizable()
                        .frame(width: 21.0/15*24, height: 15.0/15*24)
                        .clipShape(Circle())
                    
                    Text(exchange)
                        .font(Font.system(size: UIFontMetrics.default.scaledValue(for: 20)))
                        .fontWeight(.medium)
                        .foregroundColor(.label)
                    
                    Spacer()
                    
                    TextField("", text: $cashTextValue) { _ in
                        
                    }
                    .font(Font.headline.weight(isChoose ? .bold : .medium))
                    .font(Font.system(size: UIFontMetrics.default.scaledValue(for: 20)))
                    .frame(alignment: .trailing)
                    .multilineTextAlignment(.trailing)
                    .keyboardType(.decimalPad)
                        
                }
                .padding()
            }
            
        }
        .ignoresSafeArea()
       
    }
}


struct EditCashListItem_Previews: PreviewProvider {
    static var previews: some View {
        EditCashListItem(exchange: "GEL", cash: 2746.76, flag: "GE", isChoose: false, cashTextValue: .constant("1345"))
    }
}
