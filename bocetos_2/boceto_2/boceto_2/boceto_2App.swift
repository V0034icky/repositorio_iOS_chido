//
//  boceto_2App.swift
//  boceto_2
//
//  Created by alumno on 9/22/25.
//

import SwiftUI

@main
struct boceto_2App: App {
    @State var controlador = ControladorBasico()
        
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(controlador)
        }
    }
}
