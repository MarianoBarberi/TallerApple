//
//  ItemViewModel.swift
//  TallerApple
//
//  Created by Concepción Hernández Flores on 05/12/23.
//

import Foundation
import SwiftUI

class MovieViewModel : ObservableObject {
    
    @Published var arrMovies = [MovieModel]()
    
    init(){
        getItems()
    }
    
    
    func getItems() {
        
        var movie : MovieModel
        
        
        movie = MovieModel(titulo: "The Batman", descripcion: "On Halloween, Gotham City mayor Don Mitchell Jr. is murdered by the Riddler, a masked serial killer. Reclusive billionaire Bruce Wayne, who has operated for two years as the vigilante Batman, investigates the murder alongside the Gotham City Police Department (GCPD).",url:"https://youtu.be/fWQrd6cwJ0A?si=Mj_QByHYHHwUZv77", nombreImagen: "batman")
        arrMovies.append(movie)
        
        movie = MovieModel(titulo: "Avengers Infinity War", descripcion: "On a mission to collect all six Infinity Stones, Thanos plans to use the artifacts to inflict his twisted will on reality. The fate of the planet and existence itself has never been more uncertain as everything the Avengers have fought for has led up to this moment.", url: "https://youtu.be/6ZfuNTqbHE8?si=7cvp0Wq9Yi-VQR6B", nombreImagen: "avengers")
        arrMovies.append(movie)
        
        movie = MovieModel(titulo: "La La Land ", descripcion: "While navigating their careers in Los Angeles, a pianist and an actress fall in love while attempting to reconcile their aspirations for the future.",url: "https://youtu.be/45s24h98iOc?si=z9LKoWEaz4Hh3cjS", nombreImagen: "lalaland")
        arrMovies.append(movie)
        
        movie = MovieModel(titulo: "Bohemian Rhapsody", descripcion: "Bohemian Rhapsody is a 2018 biographical musical drama film that focuses on the life of Freddie Mercury, the lead singer of the British rock band Queen, from the formation of the band in 1970 to their 1985 Live Aid performance at the original Wembley Stadium.", url: "https://youtu.be/mP0VHJYFOAU?si=UnI0Pf03bboeNQNY", nombreImagen: "br")
        arrMovies.append(movie)
        
        movie = MovieModel(titulo: "Shrek", descripcion: "A mean lord exiles fairytale creatures to the swamp of a grumpy ogre, who must go on a quest and rescue a princess for the lord in order to get his land back. It's the story of a terrifying green ogre by the name of Shrek, who lives in a swamp.", url: "https://youtu.be/CwXOrWvPBPk?si=i5w0DRYm1DwXyt6r",  nombreImagen: "shrek")
        arrMovies.append(movie)
    }
    
}
