//
//  CardView.swift
//  Holdy
//
//  Created by Oksana Kaledina on 13.09.2022.
//

import SwiftUI

struct CardView: View {
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 12)
                .foregroundColor(Color.tertiarySystemBackground)
                .frame(height: 96)
                
            
            VStack(spacing: 18){
                Spacer()
                HStack{
                    Text("Card name")
                    Spacer()
                    Text("Visa")
                        .bold()
                        .opacity(0.24)
                }
                .modifier(TextSize(s: 13))
              

                HStack{
                    VStack(alignment: .leading, spacing: 0){
                        Text("Card number")
                            .modifier(TextSize(s: 13))
                        Text("Only last 4 numbers")
                            .modifier(TextSize(s: 12))
                            .opacity(0.4)
                    }
                    Spacer()
                    Text("0000")
                        .bold()
                        .modifier(TextSize(s: 13))
                        .opacity(0.24)
                        
                }
                Spacer()
            }
            .padding(.trailing, 16)
            .padding(.leading, 16)
            
        }
        .frame(height: 96)
        
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView()
    }
}
