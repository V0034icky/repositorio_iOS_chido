//
//  ContentView.swift
//  juego_ra_02
//
//  Created by alumno on 11/5/25.
//

import SwiftUI
import CoreLocation

struct ContentView: View {
    @State var servicio_ubicacion = ServicioUbicacion()
    
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("\(servicio_ubicacion.ubicacion_actual?.distance(from: CLLocation(pistas.first!.ubicacion))")
            Text("Distancia a la pista es \(servicio_ubicacion.ubicacion_actual)")
            ///Text("\(servicio_ubicacion.ubicacion_actual?.longitude)")
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
