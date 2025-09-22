//
//  pantalla_3.swift
//  boceto_2
//
//  Created by alumno on 9/22/25.
//

import SwiftUI

struct PantallaOpciones: View{
    @State var valor_slider = 50.0
    
    
    var body: some View{
        ScrollView{
            VStack{
                Text("Hola mundo el valor del slider es: \(valor_slider)")
                Slider(value: $valor_slider, in: 0...100)
                    .padding()
                
                DatePicker(selection: /*@START_MENU_TOKEN@*/.constant(Date())/*@END_MENU_TOKEN@*/, label: { /*@START_MENU_TOKEN@*/Text("Date")/*@END_MENU_TOKEN@*/ })
                    .padding()

                ColorPicker("Color-Picker", selection: .constant(.black))
                    .padding(10)
                
                Text("TextField")
                TextField(/*@START_MENU_TOKEN@*/"Placeholder"/*@END_MENU_TOKEN@*/, text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)
                    .padding()

                SecureField(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=Label@*/"Password"/*@END_MENU_TOKEN@*/, text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("Apple")/*@END_MENU_TOKEN@*/)
            }
        }
    }
}

#Preview{
    PantallaOpciones()
        .environment(ControladorBasico())
}
