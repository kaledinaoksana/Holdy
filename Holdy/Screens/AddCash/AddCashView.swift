//
//  AddCashView.swift
//  Holdy
//
//  Created by Oksana Kaledina on 20.07.2022.
//

import SwiftUI

struct AddCashView: View {
    
    let exchange: String
    @Binding var cash: Double
    @State var newCash: Double
    let flag: String
    @Binding var isPresented: Bool
    
    
    private var cashText: String{
        "\(cash)"
    }
    

    @FocusState private var isInputActive: Bool
    @State private var isNavigationBarHidden: Bool = true
    @State private var isCurrencyHidden: Bool = false
    @State private var isSaveDisabled: Bool = true
    @State var isShowingSheet = false
    
    
    var body: some View {
        NavigationView{
                    
            ZStack{
                Color.secondarySystemBackground
                    .ignoresSafeArea()
                
                VStack{
                    HStack(){
                        
                        Button (action: cancel) {
                            Text("Cancel")
                                .font(Font.system(size: UIFontMetrics.default.scaledValue(for: 17)))
                                .foregroundColor(Color.blue)
                        }
                        
                        Spacer()
                        Text("Cash")
                            .font(Font.system(size: UIFontMetrics.default.scaledValue(for: 17)))
                            .bold()
                        
                        Spacer()
                        
                        Button (action: addCash) { //Save newCash in DB
                            Text("Add")
                                .font(Font.system(size: UIFontMetrics.default.scaledValue(for: 17)))
                                .bold()
                                .foregroundColor(isSaveDisabled ? Color.gray: Color.blue)
                        }
                        .disabled(isSaveDisabled)
                    
                    } //HStack - navigation bar
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
                            AddCashListItem(exchange: exchange, flag: flag){
                                withAnimation(Constants.anim) { isShowingSheet = true }
                            }
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
                        }//if
                    }//VStack
                  
                    Spacer()
                   
                }//VStack
                .padding()
                
                
                
                withAnimation(.easeOut) {
                    Color
                        .black
                        .opacity(isShowingSheet ? 0.48 : 0.0)
                        .ignoresSafeArea()
                        .gesture(TapGesture()
                              .onEnded{
                                    withAnimation(Constants.anim) { isShowingSheet = false }
                              }
                        )
                }
                  
                
                CurrencyButtomSheetView(show: $isShowingSheet)
                    .gesture(DragGesture()
                            .onEnded{ _ in
                                withAnimation(Constants.anim) { isShowingSheet = false }
                            }
                    )
                   
                
                
                
                
                
            }//ZStack
            .navigationBarHidden(self.isNavigationBarHidden)
            .onAppear{self.isNavigationBarHidden = true}
            
            
        }//NavigationView for toolbar
    }//body
    
    private func addCash(){
        cash = newCash
        isPresented.toggle()
    }
    
    private func cancel(){
        isPresented.toggle()
    }
    
}

struct AddCashView_Previews: PreviewProvider {
    static var previews: some View {
        AddCashView(exchange: "GEL", cash: .constant(2746.76), newCash: 2746.76, flag: "GE", isPresented: .constant(true))
    }
}
