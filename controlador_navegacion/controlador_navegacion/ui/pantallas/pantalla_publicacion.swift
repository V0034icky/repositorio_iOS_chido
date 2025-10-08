//
//  pantalla_publicacion.swift
//  controlador_navegacion
//
//  Created by alumno on 10/8/25.
//

import SwiftUI

struct PantallaPublicacion: View {
    @Environment(ControladorGeneral.self) var controlador
    var publicacion_actual: Publicacion
    
    var body: some View {
        Text("Título: \(publicacion_actual.title)")
            .onAppear{
                controlador.publicacion_seleccionada(publicacion_actual.id)
            }
        Text(" \(publicacion_actual.body)")
        Text("Por: \(publicacion_actual.id)")
        
        ScrollView{
            VStack{
                ForEach(controlador.comentarios){ comentario in
                    Text("\(comentario)")
                }
            }
        }
    }
}

#Preview {
    PantallaPublicacion(publicacion_actual: Publicacion(userId: 1, id: 1, title: "404", body: "No encontrado"))
        .environment(ControladorGeneral())
}
