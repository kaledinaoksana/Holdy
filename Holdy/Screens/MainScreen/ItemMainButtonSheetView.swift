//
//  ItemSheetView.swift
//  Holdy
//
//  Created by Oksana Kaledina on 20.07.2022.
//

import SwiftUI

struct ItemMainButtonSheetView: View {
    
    let image: String
    let label: String
    let color: Color
    let action: () -> Void
    
    var body: some View {
        
        HStack(spacing: 12){
            
            ZStack{
                Circle()
                    .frame(width: 32, height: 32)
                    .foregroundColor(color)
                Image(image)
                    .resizable()
                    .frame(width: 20, height: 20)
                    .foregroundColor(Color.white)
                    
            }
           
            Text(label)
                .font(Font.system(size: UIFontMetrics.default.scaledValue(for: 15)))
                .bold()
            
            Spacer()
            Button(action: {}){
                Image("next")
                    .resizable()
                    .frame(width: 7, height: 14)
                    .foregroundColor(Color.black.opacity(0.24))
            }
        }
       
    }
}

struct ItemSheetView_Previews: PreviewProvider {
    static var previews: some View {
        ItemMainButtonSheetView(image: "coin", label: "Cash", color: Color.gray, action: {})
    }
}
