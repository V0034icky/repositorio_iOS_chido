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
        if let usuario = controlador.usuarios.first(where: { $0.id == publicacion_actual.userId }){
            HStack{
                Text("Por:")
                    .foregroundStyle(color_fondo)
                    .padding(.leading, 20)
                NavigationLink(destination: {
                    PantallaUsuario(usuario_actual: usuario)
                }) {
                    Text(usuario.name)
                        .font(.headline)
                        .foregroundStyle(color_fondo)
                        .padding(.leading, 20)
                    Spacer()
                }
            }
        }else{
            Text("Cargando usuario...")
                .foregroundStyle(.gray)
                .task{
                    await controlador.descargar_usuarios()
                }
                .padding(.bottom, 10)
        }
        Text("\(publicacion_actual.body).")
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(.leading, 20)
        
        ScrollView{
            VStack{
                Text("Comentarios")
                    .font(.title2)
                    .bold()
                    .foregroundStyle(color_fondo)
                    .padding(5)
                ForEach(controlador.comentarios.filter { $0.postId == publicacion_actual.id}) { comentario in
                    VStack(){
                        Text(comentario.name)
                            .font(.headline)
                            .foregroundStyle(color_fondo)
                        Text(comentario.email)
                            .font(.subheadline)
                            .foregroundStyle(.gray)
                        Text(comentario.body)
                            .font(.body)
                            .padding(.bottom, 10)
                    }
                    .padding(.vertical, 5)
                    .padding(.horizontal, 10)
                    .background(Color.gray.opacity(0.1))
                    .cornerRadius(10)
                }
                
                .padding(20)
                .task{
                    controlador.descargar_comentarios(publicacion_actual.id)
                }
            }
        }
    }
}

#Preview {
    PantallaPublicacion(publicacion_actual: Publicacion(userId: 1, id: 1, title: "404", body: "No encontrado"))
        .environment(ControladorGeneral())
}
