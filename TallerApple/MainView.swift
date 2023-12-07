//
//  MainView.swift
//  TallerApple
//
//  Created by Mariano Barberi on 06/12/23.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        //ContentView()
        TabView{
            ContentView()
            //.environmentObject(cartVM)
                .tabItem{
                    Image(systemName: "house.fill")
                }
            View2()
            //.environmentObject(cartVM)
                .tabItem{
                    Image(systemName: "person.fill")
                }
            
        }
        
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
        
        MainView()
            .previewDevice("iPhone SE (3rd generation)")
            .preferredColorScheme(.dark)
    }
}
