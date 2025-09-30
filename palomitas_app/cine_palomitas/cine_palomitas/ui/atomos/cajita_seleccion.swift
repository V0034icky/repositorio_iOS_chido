//
//  cajita_seleccion.swift
//  cine_palomitas
//
//  Created by Alejandra Hernández Ibarra on 29/09/25.
//

import SwiftUI

struct CajitaSeleccionada: View{
    @Binding var checado: Bool
    var tamaño: CGFloat = 20
    
    var body: some View{
        ZStack{
            Rectangle()
                .frame(width: tamaño, height: tamaño)
                .cornerRadius(5)
                .foregroundStyle(checado ? color_fondo: color_fondo)
            Image(systemName: "checkmark")
                .resizable()
                .scaledToFit()
                .frame(width: tamaño - (tamaño * 0.40))
                .foregroundStyle(checado ? color_titulo: color_fondo)
        }
        .onTapGesture {
            checado.toggle()
        }
    }
}

#Preview{
    @Previewable @State var esta_checado: Bool = false
    CajitaSeleccionada(checado: $esta_checado)
}
