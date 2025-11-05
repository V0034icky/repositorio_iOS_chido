//
//  cuerpos_de_pista.swift
//  juego_ra_02
//
//  Created by alumno on 11/5/25.
//

enum TiposDePista{
    case informacion
    case interactiva
}

protocol CuerpoPista{
    var tipo: TiposDePista { get set }
    var informacion: String { get set }
}

struct PistaInformacion: CuerpoPista{
    var tipo = TiposDePista.informacion
    
    var informacion: String
}
