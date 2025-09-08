//
//  spoiler.swift
//  mi_primera_chamba
//
//  Created by alumno on 9/8/25.
//

import SwiftUI

struct Spoiler: View{
    var texto = ""
    @State var mostrar: Bool = false
    var body: some View{
        Text("SPOILER: \(texto)")
            .onTapGesture {
                mostrar = !mostrar
            }
            .foregroundStyle((mostrar) ? Color.black: Color.white)
    }
    
}

#Preview {
    Spoiler(texto: "hola mundo")
}
