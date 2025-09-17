//
//  replica_juego.swift
//  app_replica_juego
//
//  Created by alumno on 9/17/25.
//

import SwiftUI

struct 😔: View{
    var body: some View{
        
        ZStack{
            Color(.colorFondo)
                .ignoresSafeArea()
            
            VStack{
                HStack{
                    Text("MENÚ")
                        .foregroundStyle(.colorFont)
                        .padding(6)
                        .bold()
                    
                    Spacer()
                    
                    Text("Códigos Enigmas | 42")
                        .foregroundStyle(.colorFont)
                        .padding(6)
                    
                    .bold()
                }
                
                Text("TITULO")
                    .foregroundStyle(.colorFont)
                    .padding(6)
                    .multilineTextAlignment(.leading)
                    .bold()
                
                Spacer()
                VStack{
                    ColumnasNombres(columna_1: "Nombre", columna_2: "Puntuacion")
                    ForEach(nombres_capitanes){ nombre in
                        ColumnasNombres(columna_1: nombre.nombre, columna_2: "\(nombre.codigos_enigma)")
                    }
                }
                
            }
            
        }
        
    }
}

#Preview {
    😔()
}
