//
//  tarjeta_presentacion_personaje.swift
//  nueva_app_con_api
//
//  Created by alumno on 10/27/25.
//

import SwiftUI

struct TarjetaPersonaje : View {
    var personaje: Personaje
    
    var body: some View {
        AsyncImage(url: URL(string: personaje.img)){ estado in
            switch(estado){
                case .empty:
                    Text("Estamos descargando fotos")
                case .success(let imagen):
                    imagen
                        .resizable()
                        .scaledToFit()
                        .padding(10)
                case .failure(_):
                    Text("Parece que no tiene internet")
            @unknown default:
                Text("Esto ta raro. Como le hiciste paps?")
            }
        }
            
        Text("Hola! Mi nombre es \(personaje.name)")
            .font(.title3)
    }
}

#Preview {
    TarjetaPersonaje(
        personaje: Personaje(id: 1, name: "404", gender: "No", race: "Sabrá dios", description: "No encontrada", img: "https://africanoverlandtours.com/wp-content/uploads/2014/04/animal_facts-e1396431549968.jpg", affiliation_id: 1, arc_id: 1, quote: "Datos fabricados")
    )
}
