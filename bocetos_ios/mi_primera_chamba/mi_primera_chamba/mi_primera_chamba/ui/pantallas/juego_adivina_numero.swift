//
//  juego_adivina_numero.swift
//  mi_primera_chamba
//
//  Created by alumno on 9/5/25.
//

import SwiftUI


struct 😩: View{
    @Environment(ControlJuego.self) var juego
    @State var entrada_del_usuario: String = ""
    @State var mostrar_spoiler = false
    @State var comentario : String = ""
    @State var leyenda_advertencia = false
    
    var body: some View{
        ZStack{
            Color.white
                .ignoresSafeArea()
            
            VStack{
                Spoiler(texto: "Numero \(juego.numero_secreto)")
                
                Spacer()
                
                Text("REGLAS")
                    .font(.title)
                    .fontWeight(.bold)
                    .padding(20)
                Text("Adivina el número en el que estoy pensando")
                Spacer()
                Text("Cantidad de intentos: \(juego.intentos)")
                    .font(.headline)
                
                Spacer()
                
                Botonexto(accion: {
                    if juego.estado_actual != .ha_ganado{
                        //loop_juego()
                        comentario = juego.validar_intento(entrada_del_usuario)
                    }
                },
                          texto: $entrada_del_usuario,
                          place_holder: "Introduce un numero",
                          etiqueta: "Intentar")
                if(juego.estado_actual == .ha_ganado){
                    Button(action: {}/*loop_juego*/){
                        Text("Reinicia juego")
                    }
                }
                
                Leyenda(peligro: $leyenda_advertencia, texto: comentario)
                
                
                Spacer()
                
                VStack{
                    RenglonColumna2(columna_1: "Nombre", columna_2: "Puntuación")
                    
                    ForEach(jugadore_falsos){ jugador in
                        RenglonColumna2(columna_1: jugador.nombre, columna_2: "\(jugador.puntuacion)")
                    }
                }
                
                Spacer()
            }
        }
    }
}

#Preview {
    😩()
        .environment(ControlJuego())
}
