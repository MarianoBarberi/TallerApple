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
    
    public static var defaultMovie = MovieModel(titulo: "The Batman", descripcion: "On Halloween, Gotham City mayor Don Mitchell Jr. is murdered by the Riddler, a masked serial killer. Reclusive billionaire Bruce Wayne, who has operated for two years as the vigilante Batman, investigates the murder alongside the Gotham City Police Department (GCPD).",url:"https://youtu.be/fWQrd6cwJ0A?si=Mj_QByHYHHwUZv77", nombreImagen: "batman")
}
