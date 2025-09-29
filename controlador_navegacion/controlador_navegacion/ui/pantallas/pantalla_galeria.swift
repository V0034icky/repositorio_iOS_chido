//
//  pantalla_galeria.swift
//  controlador_navegacion
//
//  Created by alumno on 9/29/25.
//

import SwiftUI

struct PantallaGaleria: View {
    var body: some View {
        Text("pantalla galeria")
        
        NavigationLink{
            PantallaInicio()
        } label: {
            Text("Ir a inicio")
        }
    }
}

#Preview {
    NavigationStack{
        PantallaGaleria()
    }
}

