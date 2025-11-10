//
//  pistas.swift
//  juego_ra
//
//  Created by Jadzia Gallegos on 05/11/25.
//
import CoreLocation

let pistas = [
    Pista(
        ubicacion:
            CLLocation(latitude: 31.74249399834499, longitude: -106.43208805090772),
        id: "pista_1",
        cuerpo:
            PistaInformacion(
                informacion: "Texto para mostrar al usario"
            )
    ),
    Pista(
        ubicacion: CLLocation(
            latitude: 31.742069242592127,
            longitude: -106.43237654340423),
        id: "pista_2",
        cuerpo: PistaInteractuable(
            informacion: "Texto de prueba para la pantalla interactuable",
            interacciones: [
                Boton(
                    mensaje: "Puchopicame para ir a la pista 1",
                    conecta_con_pista: "pista_1")
            ]
        )
    )
]



