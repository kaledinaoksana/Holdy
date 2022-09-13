//
//  AddMoreView.swift
//  Holdy
//
//  Created by Oksana Kaledina on 13.09.2022.
//

import SwiftUI

struct AddMoreView: View {
    
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 12)
                .foregroundColor(Color.tertiarySystemBackground)
                .frame(height: 44)
            HStack(spacing: 8){
                AddButtonView(lineWidth: 11.43, circleD: 20){
                       //ACTION ADD
                }
                Text("Add more")
                    .foregroundColor(.systemFill)
                    .bold()
                    .font(Font.system(size: UIFontMetrics.default.scaledValue(for: 13)))
                    
                
                Spacer()
            }
            .padding()
        }
        .frame(height: 44)
    }
}


struct AddMoreView_Previews: PreviewProvider {
    static var previews: some View {
        AddMoreView()
    }
}
