//
//  inicio.swift
//  controlador_navegacion
//
//  Created by alumno on 9/29/25.
//

import SwiftUI


struct PantallaInicio: View {
    var body: some View {
        Text("Bienvenidos al Himalaya")
        
        NavigationLink{
            PantallConfiguracion()
        } label: {
            Text("Ir a pantalla configuracion")
        }
        NavigationLink{
            PantallaGaleria()
        } label: {
            Text("Ir a pantalla de galería")
        }
    }
}

#Preview {
    NavigationStack{
        PantallaInicio()
    }
}
