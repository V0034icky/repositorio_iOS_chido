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
        HStack(alignment: .firstTextBaseline){
            Text(columna_1)
                .foregroundStyle(.colorFont)
                .padding(6)
                .multilineTextAlignment(.trailing)
                .bold()
            
            Spacer()
            
            Text(columna_2)
                .foregroundStyle(.colorFont)
                .padding(6)
                .multilineTextAlignment(.trailing)
                .bold()
        }
    }
}

#Preview {
    ColumnasNombres(columna_1: "PLACEHOLDER", columna_2: "PLACEHOLDER2")
}
