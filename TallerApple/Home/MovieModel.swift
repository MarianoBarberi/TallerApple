//
//  ItemModel.swift
//  TallerApple
//
//  Created by Concepción Hernández Flores on 05/12/23.
//

import Foundation

struct MovieModel : Identifiable {
    var id = UUID()
    var titulo : String?
    var descripcion : String?
    var url: String?
    var nombreImagen :String?
}

extension MovieModel {
    
    public static var defaultMovie = MovieModel(titulo: "Chichen Itza", descripcion: "El Templo Kukulcán es la construcción más conocida de Chichen Itzá, el sitio arqueológico maya que se encuentra en el norte de la península de Yucatán.", url: "",nombreImagen: "ChichenItza")
}
