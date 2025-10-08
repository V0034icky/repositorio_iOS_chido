//
//  comentario.swift
//  controlador_navegacion
//
//  Created by alumno on 10/8/25.
//

import Foundation

struct Comentario: Identifiable, Codable{
    let postId: Int
    let id: Int
    let name: String
    let email: String
    let body: String
}
