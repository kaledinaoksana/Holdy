//
//  SavingsImageView.swift
//  HoldyApp
//
//  Created by Oksana Kaledina on 05.07.2022.
//

import SwiftUI

struct SavingsImageView: View {
    
    let width: Double
    let isOn: Bool
    
    var body: some View {
        ZStack{
            SavingsShape()
                .frame(width: width, height: width/16.0*13.54)
                .foregroundColor(.black)
                .opacity(isOn == false ? 0.32 : 1.00)
        }
        .frame(width: width)
    }
}

struct SavingsImageView_Previews: PreviewProvider {
    static var previews: some View {
        SavingsImageView(width: 100, isOn: true)
    }
}
