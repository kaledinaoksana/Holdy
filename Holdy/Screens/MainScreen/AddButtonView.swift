//
//  AddButtonView.swift
//  HoldyApp
//
//  Created by Oksana Kaledina on 06.07.2022.
//

import SwiftUI

struct AddButtonView: View {
    
    let action: () -> Void
    
    var body: some View {
        
        Button(action: action) {
            ZStack{
                Circle()
                    .foregroundColor(.systemFill)
                    .frame(width: 28, height: 28)
                RoundedRectangle(cornerRadius: 1)
                    .foregroundColor(.white)
                    .frame(width: 16, height: 2)
                RoundedRectangle(cornerRadius: 1)
                    .foregroundColor(.white)
                    .frame(width: 16, height: 2)
                    .rotationEffect(.degrees(90))
            }
        }
        
    }
}

struct AddButtonView_Previews: PreviewProvider {
    static var previews: some View {
        AddButtonView(action: {})
    }
}
