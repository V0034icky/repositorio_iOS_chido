//
//  botonexto.swift
//  mi_primera_chamba
//
//  Created by alumno on 9/8/25.
//

import SwiftUI

struct Botonexto: View {
    var accion: () -> Void
    
    @Binding var texto: String
    var place_holder : String = "ADVERTENCIA: NO HAY CALIENTASILLAS"
    var etiqueta: String = "NO HAY ETIQUETA"
    
    var body: some View {
        VStack{
            TextField(place_holder, text: $texto)
                .frame(width: 250)
                .multilineTextAlignment(.center)
            
            Button(action: accion){
                Text(etiqueta)
                Image(systemName: "hand.tap.fill")
                    .buttonStyle(.automatic)
            }
        }
    }
}

/*
#Preview{
    @Previewable @State var texto = ""
    Botonexto(al_pulsar_boton: {print("Hola mundo")}, entrada_del_usuario: $texto)
}
*/
