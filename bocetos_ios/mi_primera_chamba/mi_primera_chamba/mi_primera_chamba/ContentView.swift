//
//  ContentView.swift
//  mi_primera_chamba
//
//  Created by alumno on 9/3/25.
//

import SwiftUI

struct Pantalla: View {
    @State var numero: Int = 0
    
    var body: some View {
        Spacer()
        HStack{
            Text("Has pulsado \(numero) numero de veces")
                .font(.title)
                .multilineTextAlignment(.trailing)
                .foregroundStyle(Color.blue)
                .padding(0.0)
                .background(Color.orange)
                .cornerRadius(10)
            Text("hola mundo")
                .foregroundStyle(Color.red)
                .background(Color.blue)
                .padding()
            Text("hola mundo")
                .foregroundStyle(Color.green)
                .padding()
                .background(Color.purple)
            Text("hola mundo")
            Text("hola mundo")
        }
        Spacer()
        VStack{
            Text("hola mundo")
            Text("hola mundo")
            Text("hola mundo")
            Text("hola mundo")
            Text("hola mundo")
        }
        Spacer()
        ZStack{
            Text("adios mundo")
            Text("Empalmado")
        }
        Spacer()
        HStack{
            Text("buenas")
            Text("buenas")
            Text("buenas")
            Text("buenas")
            VStack{
                Text("bai")
                Text("bai")
                Text("bai")
            }
        }
        Spacer()
        ZStack{
            Text("Texto")
            Text("Empalmado")
        }
        .onTapGesture {
            numero += 1
        }
    }
}

#Preview {
    Pantalla()
}
