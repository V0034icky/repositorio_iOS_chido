//
//  errores.swift
//  controlador_navegacion
//
//  Created by alumno on 10/6/25.
//

enum ErroresDeRed: Error{
    case url_mala ///hay una direccion mal escrita
    case peticion_invalida ///existe un error en la peticion HTTP
    case respuesta_erronea ///Los dstos recibidos son incorrectos
    case estado_negativo ///algo diferente al StatusCode: 200 de HTTP
    case falla_al_decodificar_informacion ///cajeteada al escribir el modelo
}
