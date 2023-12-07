//
//  ItemViewModel.swift
//  TallerApple
//
//  Created by Concepción Hernández Flores on 05/12/23.
//

import Foundation
import SwiftUI

class AccountViewModel : ObservableObject {
    
    @Published var name = "Mariano"
    @Published var age = 20
    @Published var weight = 90
    @Published var height = 1.90
    @Published var gender = true
    
}
