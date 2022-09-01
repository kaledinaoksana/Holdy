//
//  CashImageView.swift
//  HoldyApp
//
//  Created by Oksana Kaledina on 05.07.2022.
//

import SwiftUI

struct CashImageView: View {
    
    let width: Double
    let isOn: Bool
    
    var body: some View {
        ZStack{
            CashShape()
                .frame(width: width, height: width)
                .foregroundColor(.black)
                .opacity(isOn == false ? 0.32 : 1.00)
        }
        .frame(width: width)
        
    }
}

struct CashImageView_Previews: PreviewProvider {
    static var previews: some View {
        CashImageView(width: 100, isOn: true)
    }
}
