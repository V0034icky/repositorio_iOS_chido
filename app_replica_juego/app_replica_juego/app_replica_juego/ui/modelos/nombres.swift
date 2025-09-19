//
//  nombres.swift
//  app_replica_juego
//
//  Created by alumno on 9/17/25.
//

import Foundation

struct Nombre: Identifiable{
    let id = UUID()
    let nombre: String
    let codigos_enigma: Int
}

let nombres_capitanes = [
    
    Nombre(nombre: "H. Müller: Manhattan, Subway", codigos_enigma: 2),
    Nombre(nombre: "K. Klinger: Manhattan, Bunker", codigos_enigma: 2),
    Nombre(nombre: "L. Meissner: Manhattan, Penthouse", codigos_enigma: 3),
    Nombre(nombre: "R. Hofmann: Manhattan, Ruins", codigos_enigma: 3),
    Nombre(nombre: "W. Hauser, Manhattan, Harbor", codigos_enigma: 2),
    Nombre(nombre: "F. Baumgartner: Roswell, Harbor", codigos_enigma: 4),
    Nombre(nombre: "J. Schkusser: Roswell, Downtown", codigos_enigma: 5),
    Nombre(nombre: "E. Eberhardt: Mesquite, Farmhouse", codigos_enigma: 6)
]
