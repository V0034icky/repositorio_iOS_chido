//
//  nombre_comida.swift
//  cine_palomitas
//
//  Created by Alejandra Hernández Ibarra on 29/09/25.
//

import SwiftUI

enum NombreComida: String, CaseIterable, Identifiable {
    case ComidaMexicana = "Comida Mexicana"
    case ComidaItaliana = "Comida Italiana"
    case ComidaChina = "Comida China"
    case Bongles = "Boneless"
    case Hamburguesa = "Hamburguesas"
    
    var id: Self { self }
}

func pickerComida(selection: Binding<NombreComida>) -> some View{
    Picker(selection: selection, label: Text("Comidas:")) {
        ForEach(NombreComida.allCases) { opciones in
            Text(opciones.rawValue).tag(opciones)
        }
    }
    .tint(.white)
}
