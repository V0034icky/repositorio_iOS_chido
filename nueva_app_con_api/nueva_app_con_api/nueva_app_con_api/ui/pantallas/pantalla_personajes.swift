//
//  pantalla_personajes.swift
//  nueva_app_con_api
//
//  Created by alumno on 10/24/25.
//

import SwiftUI

struct PantallaPersonajes: View {
    @Environment(DemonSlayerApp.self) var controlador
    
    var body: some View {
        ZStack{
            Color("color_accents")
                .ignoresSafeArea(.all)
            
        Spacer()
            
            NavigationStack{
                ScrollView{
                    ForEach(controlador.personajes){ personaje in
                        NavigationLink{
                            Text("Pantalla del personaje \(personaje.name)")
                            Text("El chiste es: \(controlador.chiste)")
                                .onAppear{
                                    controlador.descargar_chiste()
                                }
                        }
                        label:{
                            TarjetaPersonaje(personaje: personaje)
                        }
                        .buttonStyle(.plain)
                            .padding()
                            .background(Color.white)
                            .cornerRadius(15)
                            .overlay(
                                RoundedRectangle(cornerRadius: 20)
                                    .stroke(color_accents, lineWidth: 7)
                            )
                            .padding(.top, 5)
                            .padding(.horizontal)
                    }
                }
            }
        }
        
        Spacer()
        
        HStack{
            Spacer()
            HStack{
                Text("Siguiente página")
                    .onTapGesture {
                        controlador.siguiente_pagina()
                    }
                Image(systemName: "arrowshape.right")
            }
            .padding()
            Spacer()
        }
        .background(color_accents)
    }
}

#Preview {
    PantallaPersonajes()
        .environment(DemonSlayerApp())
}
