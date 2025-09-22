//
//  pantalla_1.swift
//  boceto_2
//
//  Created by alumno on 9/22/25.
//

import SwiftUI

struct Pantalla1: View {
    @Environment(ControladorBasico.self) var controlador
    
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world! Cantidad de click es: \(controlador.clicks)")
        }
        .onTapGesture {
            controlador.clicks += 1 /// clicks.establecer_valor(nuevo_valor)
        }
        .padding()
    }
}


#Preview{
    Pantalla1()
        .environment(ControladorBasico())
}
