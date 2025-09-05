//
//  juego_adivina_numero.swift
//  mi_primera_chamba
//
//  Created by alumno on 9/5/25.
//

import SwiftUI

enum EstadosJuego{
    case esta_jugando
    case ha_ganado
}

struct 😩: View{
    @State var entrada_del_usuario: String = ""
    @State var intento_del_usuario: Int = 0
    @State var mostrar_spoiler = false
    @State var leyenda : String = ""
    
    @State var estado_del_juego: EstadosJuego = EstadosJuego.esta_jugando
    
    @State var numero_aleatorio = Int.random(in: 1...100)
    
    func validar_intento(){
        let numero_del_usuario = Int(entrada_del_usuario)
        
        //print("La entrada del usuario es: \(numero_del_usuario)")
        
        if let numero_del_usuario = numero_del_usuario{
            intento_del_usuario += 1
            
            if (numero_del_usuario == numero_aleatorio){
                leyenda = "Has ganado!"
                estado_del_juego = .ha_ganado
            }
            else if (numero_del_usuario > numero_aleatorio){
                leyenda = "Tu intento es mayor"
            }
            else {
                leyenda = "Tu intento es menor"
            }
        }
        else{
            leyenda = "Porfavor introduce un numero valido"
        }
            }
    
    func loop_juego(){
        switch(estado_del_juego){
        case .esta_jugando:
            validar_intento()
        case .ha_ganado:
            intento_del_usuario = 0
            estado_del_juego = .esta_jugando
            numero_aleatorio = Int.random(in: 1...100)
            leyenda = ""
            
        }
    }
    
    var body: some View{
        VStack{
            Text("SPOILER: \(numero_aleatorio)")
                .onTapGesture {
                    mostrar_spoiler = !mostrar_spoiler
                }
                .foregroundStyle((mostrar_spoiler) ? Color.black: Color.white)
            
            Spacer()
            
            Text("REGLAS")
            Text("Cantidad de intentos: \(intento_del_usuario)")
            
            Spacer()
            
            TextField("Introduce un número, por favor", text: $entrada_del_usuario)
                .frame(width: 250)
                .multilineTextAlignment(.center)
            
            Button(action: loop_juego){
                Text("Intentar")
                Image(systemName: "hand.tap.fill")
            }
            if(estado_del_juego == .ha_ganado){
                Button(action: loop_juego){
                    Text("Reinicia juego")
                }
            }
            
            Text(leyenda)
            
            Spacer()
            Spacer()
            Spacer()
        }
    }
}

#Preview {
    😩()
    
}
