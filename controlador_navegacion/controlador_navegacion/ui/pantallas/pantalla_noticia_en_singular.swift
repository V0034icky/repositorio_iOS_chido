//
//  pantalla_noticia.swift
//  controlador_navegacion
//
//  Created by alumno on 10/1/25.
//

import SwiftUI
struct PantallaNota: View {
    @State var noticia: Noticia
    var body: some View {
        ZStack{
            VStack{
                Text(noticia.titular)
                    .font(.title2)
                    .fontWeight(.bold)
                    .padding(6)
                
                
                HStack{
                    Image(systemName: "square.and.arrow.down")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                    
                    Text(noticia.cuerpo)
                }
            }
        }
        Spacer()
    }
}

#Preview{
    PantallaNota(noticia: noticias[3])
}
