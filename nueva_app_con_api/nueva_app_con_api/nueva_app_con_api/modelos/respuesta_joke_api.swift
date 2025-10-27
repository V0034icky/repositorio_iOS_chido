//
//  chiste.swift
//  nueva_app_con_api
//
//  Created by alumno on 10/27/25.
//

struct RespuestaJokeApi: Codable{
    let error: Bool
    let category: String
    let type: String
    let joke:String?
    let setup: String?
    let delivery: String?
    let id: Int
}
