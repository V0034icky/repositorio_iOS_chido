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
            .foregroundStyle(color_fondo)
            .font(.title)
            .bold()
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(.horizontal, 20)
        Text("Por: \(publicacion_actual.id)")
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(.leading, 20)
        Text("\(publicacion_actual.body).")
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(20)
        
        ScrollView{
            VStack{
                Text("Comentarios")
                    .font(.title2)
                    .bold()
                    .foregroundStyle(color_fondo)
                ForEach(controlador.comentarios){ comentario in
                    Text("\(comentario)")
                }
            }
            .padding(20)
        }
    }
}

#Preview {
    PantallaPublicacion(publicacion_actual: Publicacion(userId: 1, id: 1, title: "404", body: "No encontrado"))
        .environment(ControladorGeneral())
}
