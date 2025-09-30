//
//  sabor_palomitas.swift
//  cine_palomitas
//
//  Created by Alejandra Hernández Ibarra on 29/09/25.
//

import SwiftUI

enum SaboresPalomitas: String, CaseIterable, Identifiable{
    case Mantequilla
    case Caramelo
    case Natural
    case QuesoCheddar = "Queso Cheddar"
    case Cheetos
    
    var id: Self { self }
}


func pickerSabores(selection: Binding<SaboresPalomitas>) -> some View{
    Picker(selection: selection, label: Text("Sabor de palomitas")) {
        ForEach(SaboresPalomitas.allCases) { opciones in
            Text(opciones.rawValue).tag(opciones)
        }
    }
    .tint(.white)
}
