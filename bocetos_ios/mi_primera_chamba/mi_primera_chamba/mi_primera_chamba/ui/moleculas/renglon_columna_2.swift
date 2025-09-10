//
//  columna_2.swift
//  mi_primera_chamba
//
//  Created by alumno on 9/10/25.
//

import SwiftUI

struct RenglonColumna2: View{
    var columna_1: String
    var columna_2: String
    
    var body: some View{
        HStack(alignment: .firstTextBaseline){
            Text(columna_1)
                .padding(6)
                .multilineTextAlignment(.trailing)
                .frame(width: 200, alignment: .leading)
            
            Spacer()
            
            Text(columna_2)
                .padding(.horizontal, 20)
                .foregroundStyle(Color.mint)
            
        }
    }
}

#Preview{
    RenglonColumna2(columna_1: "PLACEHOLDER", columna_2: "PLACEHOLDER2")
}
