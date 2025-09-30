//
//  nombre_series.swift
//  cine_palomitas
//
//  Created by Alejandra Hernández Ibarra on 29/09/25.
//

import SwiftUI

enum NombreSerie: String, CaseIterable, Identifiable {
    case BreakingBad = "Breaking Bad"
    case Friends
    case GameOfThrones = "Game of Thrones"
    case TheWalkingDead = "The Walking Dead"
    case Dexter
    case BlackMirror = "Black Mirror"
    
    var id: Self { self }
}

func pickerSeries(selection: Binding<NombreSerie>) -> some View{
    Picker(selection: selection, label: Text("Series")) {
        ForEach(NombreSerie.allCases) { opciones in
            Text(opciones.rawValue).tag(opciones)
        }
    }
    .tint(.white)
}

