//
//  AddCashListItem.swift
//  Holdy
//
//  Created by Oksana Kaledina on 20.07.2022.
//

import SwiftUI

struct AddCashListItem: View {
    
    let exchange: String
    let flag: String
    
    let action: () -> Void
    
    @State var isChoose = false
    @State private var showAlert = false
    
    @State var cashTextValue = "0"
    var savedCash: Double = 0
    
    
    var body: some View {
       
       
            ZStack{
                ZStack{
                    RoundedRectangle(cornerRadius: 12)
                        .fill(Color.tertiarySystemBackground)
                        .frame(height: 52)
                        .overlay(isChoose ? RoundedRectangle(cornerRadius: 12)
                                    .stroke(Color.systemFill, lineWidth: 1) : nil)
                    
                    HStack( spacing: 12){
                        
                        Button(action: action) {
                            HStack{
                                Image(flag)
                                    .resizable()
                                    .frame(width: 21.0/15*24, height: 15.0/15*24)
                                    .clipShape(Circle())
                                
                                Text(exchange)
                                    .font(Font.system(size: UIFontMetrics.default.scaledValue(for: 20)))
                                    .fontWeight(.medium)
                                    .foregroundColor(.label)
                                
                                Image("down")
                                    .resizable()
                                    .frame(width: 11.67, height: 5.83)
                                
                            }
                        }
                        
                        
                        Spacer()
                        
                        TextField("\(savedCash)", text: $cashTextValue) { _ in
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
            
            self.isChoose.toggle()
            return
        }
        showAlert.toggle()
        cashTextValue = "0"
        
    }
    
    private func chooseCurrency() {
        // buttom sheet
        
    }
    
    
}//view


struct AddCashListItem_Previews: PreviewProvider {
    static var previews: some View {
        AddCashListItem(exchange: "GEL", flag: "GE", action: {})
    }
}
