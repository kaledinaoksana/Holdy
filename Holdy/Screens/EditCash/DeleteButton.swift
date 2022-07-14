//
//  DeleteButton.swift
//  Holdy
//
//  Created by Oksana Kaledina on 15.07.2022.
//

import SwiftUI

struct DeleteButton: View {
    var body: some View {
        ZStack{
            
            RoundedRectangle(cornerRadius: 10)
                .fill(Color.secondarySystemFill.opacity(0.12))
                .frame(width: 102, height: 40)
            
            HStack{
                Image("delete")
                    .resizable()
                    .frame(width: 20, height: 20)
                    .foregroundColor(Color.secondarySystemFill)
                    
                
                Text("Delete")
                    .foregroundColor(.secondarySystemFill)
                    .bold()
                    .font(Font.system(size: UIFontMetrics.default.scaledValue(for: 15)))
            }
            .padding(EdgeInsets(top: 10,
                                leading: 12,
                                bottom: 10,
                                trailing: 16))
            
                
        }
    }
}

struct DeleteButton_Previews: PreviewProvider {
    static var previews: some View {
        DeleteButton()
    }
}
