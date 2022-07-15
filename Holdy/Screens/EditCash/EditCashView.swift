//
//  EditCashView.swift
//  Holdy
//
//  Created by Oksana Kaledina on 14.07.2022.
//

import SwiftUI

struct EditCashView: View {
    
    let exchange: String
    @Binding var cash: Double
    @State var newCash: Double
    let flag: String
    
    private var cashText: String{
        "\(cash)"
    }
    

    @FocusState private var isInputActive: Bool
    @State private var isNavigationBarHidden: Bool = true
    @State private var isCurrencyHidden: Bool = false
    @State private var isSaveDisabled: Bool = true
    
    var body: some View {
       
        NavigationView{
                    
            ZStack{
                Color.secondarySystemBackground
                    .ignoresSafeArea()
                
                VStack{
                    HStack(){
                        Spacer()
                        //ACTION SAVE
                        Button (action: saveCash) { //Save newCash in DB
                            Text("Save")
                                .font(Font.system(size: UIFontMetrics.default.scaledValue(for: 17)))
                                .bold()
                                .foregroundColor(isSaveDisabled ? Color.gray: Color.blue)
                        }
                        .disabled(isSaveDisabled)
                    
                    }
                    .padding(EdgeInsets(top: 10,
                                        leading: 0,
                                        bottom: 10,
                                        trailing: 0))
                    
                    VStack(spacing: 8){
                        HStack{
                            Text("Balance")
                                .font(Font.system(size: UIFontMetrics.default.scaledValue(for: 17)))
                                .bold()
                            Spacer()
                        }
                        .padding(.top)
                        
                        
                        if !isCurrencyHidden {
                            EditCashListItem(exchange: exchange, flag: flag, newCash: $newCash, cashTextValue: cashText)
                                .focused($isInputActive)
                                .toolbar {
                                    ToolbarItemGroup(placement: .keyboard){
                                        Spacer()
                                        Button("Done"){
                                            isInputActive = false
                                            isSaveDisabled = false
                                        }
                                    }
                                }
                        }
                        
                            
                        
                    }
                  
                    Spacer()
                    
                    DeleteButtonView(){
                        isSaveDisabled = false
                        isCurrencyHidden = true
                        newCash = 0.0
                        
                    }
                    .padding()
                }
                .padding()
            }//ZStack
            .navigationBarHidden(self.isNavigationBarHidden)
            .onAppear{self.isNavigationBarHidden = true}
            
        }//NavigationView for toolbar
    }//body
    
    private func saveCash(){
        cash = newCash
    }
    
    
}//View

    
    
struct EditCashView_Previews: PreviewProvider {
    static var previews: some View {
        EditCashView(exchange: "GEL", cash: .constant(2746.76), newCash: 2746.76, flag: "GE")
.previewInterfaceOrientation(.portraitUpsideDown)
    }
}
