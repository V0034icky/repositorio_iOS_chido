//
//  publicacion.swift
//  controlador_navegacion
//
//  Created by alumno on 10/6/25.
//

struct Publicacion: Identifiable, Codable{
    let userId: Int
    let id: Int
    let title: String
    let body: String
}
