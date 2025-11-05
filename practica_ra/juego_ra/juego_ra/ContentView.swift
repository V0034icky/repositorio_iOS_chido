//
//  ContentView.swift
//  juego_ra
//
//  Created by alumno on 11/5/25.
//

import SwiftUI

struct ContentView: View {
    @State var servicio_ubicacion = ServicioUbicacion()
    
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("\(servicio_ubicacion.ubicacion_actual?.latitude)")
            Text("\(servicio_ubicacion.ubicacion_actual?.longitude)")
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
