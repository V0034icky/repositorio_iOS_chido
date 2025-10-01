//
//  molecula_encabezado.swift
//  controlador_navegacion
//
//  Created by alumno on 9/29/25.
//

import SwiftUI

struct Encabezado: View {
    var noticia_presentar: Noticia = Noticia(
        titular: "404|", cuerpo: "No encontrado", imagen: "logo_canal_44", prioridad: .importante
    )
    
    var body: some View {
        HStack(spacing: 10){
            Image(noticia_presentar.imagen)
                .resizable()
                .scaledToFit()
                .frame(width: 80)
                .clipShape(Circle())
            
            VStack{
                HStack{
                    Text(noticia_presentar.titular)
                        .lineLimit(1)
                        .fontWeight(.bold)
                        .foregroundStyle(Color.red)
                    Spacer()
                }
                Spacer()
                HStack{
                    Text(noticia_presentar.cuerpo)
                        .lineLimit(2)
                    Spacer()
                }
            }
        }
        .frame(minWidth: 80, minHeight: 50, idealHeight: 75, maxHeight: 100)
        .padding(10)
        .background{
            Rectangle()
            .foregroundStyle(Color.white)
                .cornerRadius(10)
        }
        .padding(5)
    }
}

#Preview {
    Encabezado()
}
