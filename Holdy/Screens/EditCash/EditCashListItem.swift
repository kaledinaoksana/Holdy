//
//  EditCashListItem.swift
//  Holdy
//
//  Created by Oksana Kaledina on 15.07.2022.
//

import SwiftUI

struct EditCashListItem: View {
    
    let exchange: String
    let flag: String
    
    //@Binding var cashTextValue: String
    
    @Binding var newCash: Double
    @State var cashTextValue: String
    
    @State var isChoose = false
    @State private var showAlert = false
    
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
                        
                        TextField("\(newCash)", text: $cashTextValue) { _ in
                            checkValue()
                        }
                        .font(Font.headline.weight(isChoose ? .bold : .medium))
                        .font(Font.system(size: UIFontMetrics.default.scaledValue(for: 20)))
                        .frame(alignment: .trailing)
                        .multilineTextAlignment(.trailing)
                        .keyboardType(.decimalPad)
                        .alert("Wrong Format", isPresented: $showAlert, actions: {}) {
                            Text("Please enter true value")
                        }
                        
                            
                    }
                    .padding()
                }
                
            }//zstack
            .ignoresSafeArea()
           
    }//body
    
    
    private func checkValue() {
        if let value = Double(cashTextValue) {
            newCash = round(100*value)/100
            cashTextValue = "\(newCash)"
            self.isChoose.toggle()
            return
        }
        showAlert.toggle()
        newCash = 0
        cashTextValue = "0"
    }
    
}//view


struct EditCashListItem_Previews: PreviewProvider {
    static var previews: some View {
        EditCashListItem(exchange: "GEL", flag: "GE", newCash: .constant(1234), cashTextValue: "1234")
    }
}
