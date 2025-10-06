//
//  ui_navegacion.swift
//  controlador_navegacion
//
//  Created by alumno on 9/29/25.
//

import SwiftUI

enum Pestañas{
    case Configuracion
    case Galeria
    case Noticias
    case Inicio
    
}

struct NavegacionPrincipal: View {
    @State var pestaña_actual: Pestañas = .Inicio
    var body: some View {
        ///TabView es el menú inferior de una aplicacion
        TabView(selection: $pestaña_actual){
            Tab("Inicio", systemImage: "house", value: .Inicio){
                PantallaInicio()
            }
            .badge("wdym")
            
            Tab("Noticias", systemImage: "newspaper", value: .Noticias){
                PantallaNoticias()
            }
            .badge(noticias.count)
            
            Tab("Galería", systemImage: "photo.artframe", value: .Galeria){
                PantallaGaleria()
            }
            
            Tab("Configuracion", systemImage: "gear", value: .Configuracion){
                PantallConfiguracion()
            }
        }
    }
}

#Preview {
    NavegacionPrincipal()
}
