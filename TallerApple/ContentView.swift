//
//  ContentView.swift
//  TallerApple
//
//  Created by Concepción Hernández Flores on 05/12/23.
//

import SwiftUI

struct ContentView: View {
    @StateObject var movieVM = MovieViewModel()
    @State private var searchText : String = ""
    
    var searchFilter: [MovieModel] {
        guard !searchText.isEmpty else { return movieVM.arrMovies }
        return movieVM.arrMovies.filter { movie in
                movie.titulo!.lowercased().contains(searchText.lowercased())
            }
        }

    var body: some View {
        NavigationView {
            ScrollView {
                VStack {
                    
                    ScrollView (.horizontal){
                        HStack {
                            /*Image("default")
                             .resizable()
                             .frame(width: 100, height: 100)
                             Image("default")
                             .resizable()
                             .frame(width: 100, height: 100)
                             Image("default")
                             .resizable()
                             .frame(width: 100, height: 100)
                             Image("default")
                             .resizable()
                             .frame(width: 100, height: 100)
                             Image("default")
                             .resizable()
                             .frame(width: 100, height: 100)*/
                            ForEach(movieVM.arrMovies) { item in
                                NavigationLink(destination: MovieDetailView(movie: item),
                                               label: { MovieItemView(movie: item)})
                            }
                        }//HStack
                    }
                    ScrollView (.horizontal){
                        HStack{
                            ForEach(searchFilter) { item in
                                NavigationLink(destination: MovieDetailView(movie: item),
                                               label: { MovieItemView(movie: item)})
                            }
                        }
                    }
                    
                }//VStack
                .navigationTitle("Peliculas")
                .searchable(text: $searchText)
            }//ScrollView
        }//NavigationView
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        
        ContentView()
            .previewDevice("iPhone SE (3rd generation)")
            .preferredColorScheme(.dark)
    }
}
