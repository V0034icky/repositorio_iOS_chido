//
//  pantalla_usuario.swift
//  controlador_navegacion
//
//  Created by alumno on 10/10/25.
//

import SwiftUI

struct PantallaUsuario: View {
    var usuario_actual: Usuario
    
    var body: some View {
        Image(imagen_pfp_usuario)
            .resizable()
            .frame(width: 170, height: 170)
        Text("Id: \(usuario_actual.id)")
        Text("Nombre: \(usuario_actual.name)")
        Text("Username: \(usuario_actual.username)")
        Text("Email: \(usuario_actual.email)")
        Text("Teléfono: \(usuario_actual.phone)")
        Text("SItio: \(usuario_actual.website)")
    }
}

#Preview {
    PantallaUsuario(usuario_actual: Usuario(id: 1, name: "No encontrado", username: "No encontrado", email: "No encontrado", phone: "Desconocido", website: "Desconocido"))
}
