//
//  pantalla_2.swift
//  boceto_2
//
//  Created by alumno on 9/22/25.
//

import SwiftUI
struct Pantalla2: View {
    @Environment(ControladorBasico.self) var controlador
    
    var body: some View {
        VStack {
            Image(systemName: "square.and.arrow.up")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Bienvenido a la pantalla 2 donde click vale: \(controlador.clicks)")
        }
        .onTapGesture {
            controlador.clicks += 1 /// clicks.establecer_valor(nuevo_valor)
        }
        .padding()
    }
}

#Preview{
    Pantalla2()
        .environment(ControladorBasico())
}
