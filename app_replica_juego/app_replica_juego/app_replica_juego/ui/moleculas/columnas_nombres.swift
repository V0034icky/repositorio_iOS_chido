//
//  nombres_misiones.swift
//  app_replica_juego
//
//  Created by alumno on 9/17/25.
//

import SwiftUI
struct ColumnasNombres: View{
    var columna_1: String
    var columna_2: String
    var body: some View{
        ZStack{
            
                Color(.colorFondo)
                    .ignoresSafeArea()
            
            HStack(alignment: .firstTextBaseline){
                Text(columna_1)
                    .background(.colorFondo)
                    .foregroundStyle(.colorFont)
                    .multilineTextAlignment(.trailing)
                    .bold()
                    .padding(4)
                
                Spacer()
                
                Text(columna_2)
                    .padding(6)
                    .background(.colorFondo)
                    .foregroundStyle(.colorFont)
                    .multilineTextAlignment(.trailing)
                    .bold()
            }
            .padding(4)
        }
    }
}

#Preview {
    ColumnasNombres(columna_1: "PLACEHOLDER", columna_2: "PLACEHOLDER2")
}
