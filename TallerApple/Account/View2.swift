//
//  View2.swift
//  TallerApple
//
//  Created by Concepción Hernández Flores on 05/12/23.
//

import SwiftUI

struct View2: View {
    
    @StateObject var accVM = AccountViewModel()
    @State private var SS = "State Variable"
    @State private var isShown = false
    @State private var isShownPop = false
    
    var body: some View {
        
        NavigationView {
            GeometryReader{
                geometry in
                
            VStack{
                
                HStack{
                    Spacer()
                    NavigationLink(destination: View2Detail(SS: $SS)
                        .environmentObject(accVM)){
                            Image(systemName: "gearshape.fill")
                                .resizable()
                                .frame(width: 30, height: 30)
                        }
                        .padding([.trailing, .bottom])
                }

                HStack{
                    Text(accVM.name)
                    Spacer()
                    Text("\(accVM.age)")
                    Spacer()
                    Text("\(accVM.weight) kg")
                    Spacer()
                    Text("\(accVM.height, specifier: "%.2f") m")
                    Spacer()
                    Text(accVM.gender ? "Hombre" : "Mujer")
                }
                .padding(.horizontal)
                Text(SS)
                    .padding(.top)
                Divider()
                Spacer()
                    HStack{
                        VStack{
                            Text("Primary")
                            Button(action: {
                                isShown = true
                            }){
                                ZStack{
                                    Rectangle()
                                        .frame(width: geometry.size.width / 3.15, height: geometry.size.width / 3.15)
                                        .cornerRadius(15)
                                        .foregroundColor(.primary)
                                    Rectangle()
                                        .stroke(Color.red, lineWidth: 2)
                                        .frame(width: 125, height: 125)
                                }
                            }
                            .alert(isPresented: $isShown){
                                Alert(title: Text("titulo"), message: Text("Alerta SwiftUI"), dismissButton: .default(Text("OK")))
                            }
                        }
                        
                        VStack{
                            Text("Secondary")
                            
                            Button(action: {
                                isShownPop = true
                            }){
                                Rectangle()
                                    .frame(width: 125, height: 125)
                                    .cornerRadius(15)
                                    .foregroundStyle(Color.secondary)
                            }.popover(isPresented: $isShownPop){
                                Text("hi")
                            }
                        }
                        
                        VStack{
                            Text("Accent Color")
                            Rectangle()
                                .frame(width: 125, height: 125)
                                .cornerRadius(15)
                                .foregroundColor(.accentColor)
                        }
                    }
                
                Spacer()
                }
            }
        }
    }
}


struct View2_Previews: PreviewProvider {
    static var previews: some View {
        View2()
        
        View2()
            .previewDevice("iPhone SE (3rd generation)")
            .preferredColorScheme(.dark)
    }
}
