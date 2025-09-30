//
//  nombre_peli.swift
//  cine_palomitas
//
//  Created by Alejandra Hernández Ibarra on 29/09/25.
//

import SwiftUI

enum NombrePeli: String, CaseIterable, Identifiable {
    case ElPadrino = "El Padrino"
    case Matrix
    case VolverAlFuturo = "Saga Volver al Futuro"
    case ForrestGump = "Forrest Gump"
    case Alien
    case SpiderMan = "Spider-Man: Un nuevo universo"
    case TheDarkKnight = "Batman: The Dark Knight"
    
    var id: Self { self }
}

func pickerPeliculas(selection: Binding<NombrePeli>) -> some View{
    Picker(selection: selection, label: Text("Películas:")) {
        ForEach(NombrePeli.allCases) { opciones in
            Text(opciones.rawValue).tag(opciones)
        }
    }
    .tint(.white)
}
