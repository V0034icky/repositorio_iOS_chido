//
//  pantalla_cine.swift
//  cine_palomitas
//
//  Created by Alejandra Hernández Ibarra on 29/09/25.
//


import SwiftUI


struct PantallaOpciones: View {
    @State var quiere_palomitas: Bool = false
    @State var sabor_de_palomitas: SaboresPalomitas = .Mantequilla
    @State var valor_slider = 50.0
    @State var quiere_peli: Bool = false
    @State var nombre_peli: NombrePeli = .ElPadrino
    @State var quiere_serie: Bool = false
    @State var nombre_serie: NombreSerie = .BreakingBad
    @State var quiere_comida: Bool = false
    @State var nombre_comida: NombreComida = .ComidaMexicana
    
    var body: some View {
        ScrollView{
            VStack{
                Spacer()
                Text("¿Qué haremos el viernes por la noche?")
                    .multilineTextAlignment(.center)
                    .foregroundColor(color_titulo)
                    .font(.title)
                    .bold()
                
                VStack{
                    HStack{
                        Spacer()
                        Text("¿Quieres ver una serie?")
                        Spacer()
                        CajitaSeleccionada(checado: $quiere_serie, tamaño: 20)
                        Spacer()
                    }
                    
                    VStack{
                        if(quiere_serie == true){
                            
                            HStack{
                                Text("¿Qué serie?")
                                pickerSeries(selection: $nombre_serie)
                            }
                        }
                    }
                }
                .padding(30)
                .background(color_cajita)
                .cornerRadius(20)
                .padding(20)
                
                VStack{
                    HStack{
                        Spacer()
                        Text("¿Quieres ver una película?")
                        Spacer()
                        CajitaSeleccionada(checado: $quiere_peli, tamaño: 20)
                        Spacer()
                    }
                    
                    VStack{
                        if(quiere_peli == true){
                            
                            HStack{
                                Text("¿Qué película?")
                                pickerPeliculas(selection: $nombre_peli)
                            }
                        }
                    }
                }
                .padding(30)
                .background(color_cajita)
                .cornerRadius(20)
                .padding(20)
                
                ///Text("Hola mundo el valor del slider es: \(valor_slider)")
                ///Slider(value: $valor_slider, in: 0...100)
                
                VStack{
                    HStack{
                        Spacer()
                        Text("¿Quieres palomitas?")
                        Spacer()
                        CajitaSeleccionada(checado: $quiere_palomitas, tamaño: 20)
                        Spacer()
                    }
                    
                    VStack{
                        if(quiere_palomitas == true){
                            
                            HStack{
                                Text("¿Cuál sabor?")
                                pickerSabores(selection: $sabor_de_palomitas)
                            }
                        }
                    }
                }
                .padding(30)
                .background(color_cajita)
                .cornerRadius(20)
                .padding(20)
                Spacer()
                
                VStack{
                    HStack{
                        Spacer()
                        Text("¿Quieres cenar?")
                        Spacer()
                        CajitaSeleccionada(checado: $quiere_comida, tamaño: 20)
                        Spacer()
                    }
                    
                    VStack{
                        if(quiere_comida == true){
                            
                            HStack{
                                Text("¿Qué quieres cenar?")
                                pickerComida(selection: $nombre_comida)
                            }
                        }
                    }
                }
                .padding(30)
                .background(color_cajita)
                .cornerRadius(20)
                .padding(20)
            }
            
            
        }
        .background(color_fondo)
    }
}




#Preview {
    PantallaOpciones()
        .environment(ControladorBasico())
}

