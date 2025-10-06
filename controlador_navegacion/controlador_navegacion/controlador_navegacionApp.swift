//
//  controlador_navegacionApp.swift
//  controlador_navegacion
//
//  Created by alumno on 9/29/25.
//

import SwiftUI

@main
struct controlador_navegacionApp: App {
    @State var controlador_app = ControladorGeneral()
    
    var body: some Scene {
        WindowGroup {
            NavegacionPrincipal()
                .environment(controlador_app)
        }
    }
}
