//
//  controlador_general.swift
//  nueva_app_con_api
//
//  Created by alumno on 10/20/25.
//

import SwiftUI
import Foundation
@Observable
@MainActor

class DemonSlayerApp{
    var personajes = [Personaje]()
    var pagina_actual = 1
    
    init() {
       descargar_personajes()
    }
    
    func descargar_personajes() async{
        guard let pagina_com_datos: Pagina = ConexionAPI.descargar_datos(url: "")
    }
}
