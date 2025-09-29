//
//  molecula_encabezado.swift
//  controlador_navegacion
//
//  Created by alumno on 9/29/25.
//

import SwiftUI

struct Encabezado: View {
    var noticia_presentar: Noticia = Noticia(
        titular: "404|", cuerpo: "No encontrado", imagen: "una_salchipapa", prioridad: .importante
    )
    
    var body: some View {
        HStack(spacing: 10){
            Image(systemName: "newspaper")
                .resizable()
                .scaledToFit()
                .frame(width: 80)
            
            VStack{
                HStack{
                    Text(noticia_presentar.titular)
                    Spacer()
                }
                HStack{
                    Text(noticia_presentar.cuerpo)
                    Spacer()
                }
            }
        }
        .padding(15)
    }
}

#Preview {
    Encabezado()
}
