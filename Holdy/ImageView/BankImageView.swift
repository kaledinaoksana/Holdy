//
//  BankImageView.swift
//  Holdy
//
//  Created by Oksana Kaledina on 13.09.2022.
//

import Foundation
import SwiftUI

struct BankImageView: View {
    
    let width: Double
    let isOn: Bool
    let color: Color
    
    var space: Double {
        50.42/4.58*width
    }
    
    var body: some View {
        
        VStack(){
            BankShape1()
                .frame(width: width, height: width/50.42*35.14)
                .foregroundColor(color)
                .opacity(isOn == false ? 0.32 : 1.00)
            
            BankShape2()
                .frame(width: width, height: width/50.42*10.69)
                .foregroundColor(color)
                .opacity(isOn == false ? 0.32 : 1.00)
        }
        .frame(width: width)
        
    }
}

struct BankImageView_Previews: PreviewProvider {
    static var previews: some View {
        BankImageView(width: 100, isOn: true, color: .blue)
    }
}
