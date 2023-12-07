//
//  ItemDetailView.swift
//  TallerApple
//
//  Created by Concepción Hernández Flores on 05/12/23.
//

import SwiftUI

struct MovieDetailView: View {
    let movie : MovieModel

    var body: some View {
        VStack{

            Image(movie.nombreImagen ?? "")
                .resizable()
                .scaledToFit()
                .frame(width:250)
                .clipShape(Circle())
                .shadow(radius: 7)
                .offset(y:-50)
            VStack{
                Text(movie.titulo ?? "")
                    .font(.title)
                    .foregroundColor(.blue)
                    .offset(y:-20)
                
                Text(movie.descripcion ?? "")
                    .multilineTextAlignment(.center)
                    .padding()
                
                Link(destination: URL(string: movie.url ?? "")!, label: {
                    Label("Video", systemImage: "play.tv.fill")
                })
                Spacer()
            }
        }
    }
}



struct MovieDetailView_Previews: PreviewProvider {
    static var previews: some View {
        MovieDetailView(movie : MovieModel.defaultMovie)
        
        MovieDetailView(movie : MovieModel.defaultMovie)
            .previewDevice("iPhone SE (3rd generation)")
            .preferredColorScheme(.dark)
    }
}
