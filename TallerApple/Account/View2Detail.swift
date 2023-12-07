//
//  View2Detail.swift
//  TallerApple
//
//  Created by Mariano Barberi on 05/12/23.
//

import SwiftUI

struct View2Detail: View {
    
    @EnvironmentObject var AccVM : AccountViewModel
    @Binding var SS : String
    
    var body: some View {
        VStack{
            Form{
                Section(header: Text("Nombre")){
                    TextField("Nombre", text: $AccVM.name)
                }
                Section(header: Text("Edad")){
                    HStack{
                        TextField("Edad", value: $AccVM.age, formatter: NumberFormatter())
                            .keyboardType(.numberPad)
                        Stepper("", value: $AccVM.age, in: 0...100)
                    }
                }
                Section(header: Text("State Variable")){
                    TextField("State Variable", text: $SS)
                }
            }
        }
    }
}


struct View2Detail_Previews: PreviewProvider {
    static var previews: some View {
        View2Detail(SS: .constant(""))
            .environmentObject(AccountViewModel())
        
        View2Detail(SS: .constant(""))
            .environmentObject(AccountViewModel())
            .previewDevice("iPhone SE (3rd generation)")
            .preferredColorScheme(.dark)
    }
}
