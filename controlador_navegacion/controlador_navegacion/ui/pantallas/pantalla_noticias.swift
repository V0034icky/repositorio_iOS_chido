//
//  pantalla_noticias.swift
//  controlador_navegacion
//
//  Created by alumno on 9/29/25.
//

import SwiftUI

struct PantallaNoticias: View {
    @State var lista_noticias = noticias
    
    var body: some View {
        ScrollView{
            VStack{
                ForEach(lista_noticias){ noticia in
                    NavigationLink{
                        
                    } label:{
                        Encabezado(noticia_presentar: noticia)
                    }
                }
            }
        }
    }
}

#Preview {
    NavigationStack{
        PantallaNoticias()
    }
}
