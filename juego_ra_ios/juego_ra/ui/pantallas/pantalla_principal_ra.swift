//
//  pantalla_principal_ra.swift
//  juego_ra
//
//  Created by alumno on 11/7/25.
//

import SwiftUI

struct PantallaPrincipal: View {
    @State var proveedor_ubicacion = ServicioUbicacion()
    
    var body: some View {
        NavigationStack{
            ForEach(pistas){ pista in
                if(pista.puedes_ser_recogida(ubicacion: proveedor_ubicacion.ubicacion_actual)
                    ){
                    
                }
                else if(pista.esta_en_rango(ubicacion: proveedor_ubicacion.ubicacion_actual)
                    ){
                    if let porcentaje = pista.calcular_porcentaje(ubicacion: proveedor_ubicacion.ubicacion_actual){
                        switch(porcentaje){
                        case 1...10:
                            Text("Te estás quemando")
                        case 11...20:
                            Text("Te estás acercando")
                        case 21...30:
                            Text("Estás acercandote")
                        default:
                            Text("Muy lejos")
                            
                        }
                    }
                }
                
                else{
                    Text("No se puede obtener la distancia. Comprueba tu conexión con el GPS.")
                }
                NavigationLink{
                    Text("Esta es la pantalla de la pista")
                } label: {
                    Text("Pista numero \(pista.id)")
                }
            }
        }
    }
}

#Preview {
    PantallaPrincipal()
}
