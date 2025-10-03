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
            PantallaInicio()
        } label: {
            Text("Ir a inicio")
        }
    }
}

#Preview {
    NavigationStack{
        PantallConfiguracion()
    }
}

