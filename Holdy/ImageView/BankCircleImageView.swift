//
//  BankCircleImageView.swift
//  Holdy
//
//  Created by Oksana Kaledina on 13.09.2022.
//


import Foundation
import SwiftUI

struct BankCircleImageView: View {
    
    let circleD: Double
    let isOn: Bool
    let color: Color
    
    var space: Double {
        50.42/4.58*width
    }
    
    var width: Double {
        50.42/88.0*circleD
    }
    
    var addSpace: Double{
        2.29/88.0*circleD
    }
    
    var body: some View {
         
        ZStack{
            Circle()
                .frame(width: circleD, height: circleD)
                .foregroundColor(Color.appGreyDark)
            VStack(spacing: 0.0){
                BankImageView(
                    width: width, isOn: isOn, color: color
                )
                Circle()
                    .frame(width: addSpace, height: addSpace)
                    .opacity(0.0)
            }
        }
        
    }
}

struct BankCiecleImageView_Previews: PreviewProvider {
    static var previews: some View {
        BankCircleImageView(circleD: 100, isOn: true, color: .white)
    }
}
