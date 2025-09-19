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
                    
                    HStack{
                        Text("Códigos Enigmas | 42")
                            .foregroundStyle(.colorFont)
                            .padding(6)
                            .bold()
                        Image(imagen_ticket)
                            .resizable()
                            .scaledToFill()
                            .frame(width: 30, height: 30)
                        
                    }
                }
                
                Text("ÜBERCOMMANDER")
                    .font(.title)
                    .foregroundStyle(.colorFont)
                    .padding(6)
                    .multilineTextAlignment(.leading)
                    .bold()
                
                VStack{
                    ForEach(nombres_capitanes){ nombre in
                        HStack{
                            ColumnasNombres(columna_1: nombre.nombre, columna_2: "\(nombre.codigos_enigma) ")
                            Image(imagen_ticket)
                                .resizable()
                                .scaledToFill()
                                .frame(width: 30, height: 30)
                            Text("")
                        }
                        .padding(4)
                        .background(.colorFondo)
                        .padding(1)
                        .background(.colorFont)
                    }
                }
                Spacer()
                Spacer()
                Spacer()
                Spacer()
                Spacer()
                Spacer()
                
            }
            
        }
        
    }
}

#Preview {
    😔()
}
