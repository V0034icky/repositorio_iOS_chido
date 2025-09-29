//
//  pantalla_configuracion.swift
//  controlador_navegacion
//
//  Created by alumno on 9/29/25.
//

import SwiftUI

struct PantallConfiguracion: View {
    var body: some View {
        Text("Pantalla de configuracion")
        
        NavigationLink{
            PantallaGaleria()
        } label: {
            Text("Ir a pantalla galeria")
        }
    }
}

#Preview {
    NavigationStack{
        PantallConfiguracion()
    }
}

