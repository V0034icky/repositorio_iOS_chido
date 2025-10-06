//
//  json_placeholder.swift
//  controlador_navegacion
//
//  Created by alumno on 10/6/25.
//

import Foundation

class ServicioWeb{
    func descargar_datos<T: Codable>(url: String) async -> T?{
        do{
            guard let url = URL(string: url) else{ throw
                ErroresDeRed.url_mala }
            let (datos, respuesta) = try await URLSession.shared.data(from: url)
            guard let respuesta = respuesta as? HTTPURLResponse else { throw ErroresDeRed.respuesta_erronea}
            guard respuesta.statusCode >= 200 && respuesta.statusCode < 300 else { throw ErroresDeRed.estado_negativo}
            guard let respuesta_decodificada = try? JSONDecoder().decode(T.self, from: datos) else { throw ErroresDeRed.falla_al_decodificar_informacion }
            return respuesta_decodificada
        }
        catch ErroresDeRed.url_mala{
            print("porfavro escribe algo que sea una URL")
        }
        catch ErroresDeRed.respuesta_erronea{
            print("al parecer le esta dando un stroke al servidor")
        }
        catch ErroresDeRed.estado_negativo{
            print("al aprecer la url que buscas no existe o el servidor esta ocupado. vuelva pronto")
        }
        catch ErroresDeRed.falla_al_decodificar_informacion{
            print("al parecer tus estructuras estan mal escritas. porfavor verifica \(type(of: T.self))")
        }
        catch{
            print("algo salio mal y no se que es")
        }
        return nil
    }
}
