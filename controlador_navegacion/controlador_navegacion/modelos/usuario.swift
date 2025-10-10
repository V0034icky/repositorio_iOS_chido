//
//  usuario.swift
//  controlador_navegacion
//
//  Created by alumno on 10/10/25.
//

struct Usuario: Identifiable, Codable{
    let id: Int
    let name: String
    let username: String
    let email: String
    let phone: String
    let website: String
}
