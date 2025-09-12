//
//  mi_primera_chambaApp.swift
//  mi_primera_chamba
//
//  Created by alumno on 9/3/25.
//

import SwiftUI

@main
struct mi_primera_chambaApp: App {
    @State var controlador_de_juego = ControlJuego()
    var body: some Scene {
        WindowGroup {
            😩()
                .environment(controlador_de_juego)
        }
    }
}
