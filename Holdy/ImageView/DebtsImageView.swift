//
//  DebtsImageView.swift
//  HoldyApp
//
//  Created by Oksana Kaledina on 05.07.2022.
//

import SwiftUI

struct DebtsImageView: View {
    
    let width: Double
    let isOn: Bool
    
    var body: some View {
        ZStack{
            DebtsShape()
                .frame(width: width/16.0*11.3, height: width)
                .foregroundColor(.black)
                .opacity(isOn == false ? 0.32 : 1.00)
        }
        .frame(width: width)
    }
}

struct DebtsImageView_Previews: PreviewProvider {
    static var previews: some View {
        DebtsImageView(width: 100, isOn: true)
    }
}
