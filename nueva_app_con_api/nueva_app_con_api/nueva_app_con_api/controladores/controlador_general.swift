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
    var datos_pagina_actual: DatosPagina? = nil
    var pagina_actual = 1
    
    var chiste: RespuestaJokeApi? = nil
    
    static let demon_slayer_api = "https://www.demonslayer-api.com/api/v1"
    static let bromas_api = "https://v2.jokeapi.dev/joke"
    
    init() {
        Task{
            await descargar_personajes()
        }
    }
    
    func descargar_personajes() async{
        guard let pagina_com_datos: Pagina = await ConexionAPI.descargar_datos(url: "\(DemonSlayerApp.demon_slayer_api)/characters?page=\(pagina_actual)") else{
            print("No hay conexion a internet")
            return
        }
        datos_pagina_actual = pagina_com_datos.datos
        personajes = pagina_com_datos.personajes
    }
    
    func siguiente_pagina(){
        pagina_actual = pagina_actual + 1
        
        if(pagina_actual > datos_pagina_actual!.totalPages){
            pagina_actual -= 1
            return
        }
        print("paginan actuak: \(pagina_actual)")
        
        Task{
            await descargar_personajes()
        }
    }
    
    func descargar_chiste(){
        Task{
            await _descargar_chiste()
        }
    }
    
    private func _descargar_chiste() async{
        guard let chiste: RespuestaJokeApi = await ConexionAPI.descargar_datos(url: "\(DemonSlayerApp.bromas_api)/Any?lang=es")
        else{
            print("No hay conexion a internet")
            return
        }
        self.chiste = chiste
    }
}
