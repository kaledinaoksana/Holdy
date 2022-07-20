//
//  ItemCurrencyButtomSheetView.swift
//  Holdy
//
//  Created by Oksana Kaledina on 20.07.2022.
//

import SwiftUI

struct ItemCurrencyButtomSheetView: View {
    
    
    let exchange: String
    let addLabel: String
    let flag: String
    let icon: String
    @State var isOn: Bool

        var body: some View {
            
            HStack(spacing: 12){
                
                Button(action: {isOn.toggle()}){
                    ZStack{
                        Image(flag)
                            .resizable()
                            .frame(width: 21.0/15*32, height: 15.0/15*32)
                            .clipShape(Circle())
                    }
                   
                    VStack(alignment: .leading, spacing: 0.0){
                        Text(exchange)
                            .font(Font.system(size: UIFontMetrics.default.scaledValue(for: 15)))
                            .bold()
                            .foregroundColor(.black)
                        Text("\(addLabel) (\(icon))")
                            .font(Font.system(size: UIFontMetrics.default.scaledValue(for: 12)))
                            .bold()
                            .foregroundColor(Color.tertiaryLabel)
                    }
                   
                    
                    Spacer()
                    
                    if isOn{
                        ZStack{
                            Circle()
                                .frame(width: 24, height: 24)
                                .foregroundColor(Color.systemFill)
                            Image("yes")
                                .resizable()
                                .frame(width: 10.5, height: 8.25)
                                .foregroundColor(.white)
                            
                        }
                    }
                   
                }
                
               
            }
           
  
    }
}

struct ItemCurrencyButtomSheetView_Previews: PreviewProvider {
    static var previews: some View {
        ItemCurrencyButtomSheetView( exchange: "USD", addLabel: "United States Dollar", flag: "US", icon: "$", isOn: true )
    }
}
