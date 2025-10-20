//
//  personaje.swift
//  nueva_app_con_api
//
//  Created by alumno on 10/20/25.
//

import Foundation

struct Personaje: Identifiable, Codable {
    var id: Int
    var name: String
    var age: Int
    var gender: String
    var race: String
    var description: String
    var img: String
    var affiliation_id: Int
    var arc_id: Int
    var quote: String
}
