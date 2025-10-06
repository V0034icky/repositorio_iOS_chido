//
//  pantalla_noticias.swift
//  controlador_navegacion
//
//  Created by alumno on 9/29/25.
//

import SwiftUI

struct PantallaNoticias: View {
    @State var lista_noticias = noticias
    @Environment(ControladorGeneral.self) var controlador
    
    var body: some View {
        NavigationStack{
            ScrollView{
                LazyVStack{
                    ForEach(controlador.publicaciones){ publicacion in
                        NavigationLink{
                            //PantallaNota(noticia: noticia)
                        } label:{
                            Encabezado(publicacion: publicacion)
                        }
                        .buttonStyle(.plain)
                    }
                }
            }.background(color_fondo)
        }.onAppear{
            if controlador.publicaciones.isEmpty{
                Task{
                    await
                    controlador.descargar_publicaciones()
                }
            }
        }
    }
}

#Preview {
    PantallaNoticias()
        .environment(ControladorGeneral())
}
