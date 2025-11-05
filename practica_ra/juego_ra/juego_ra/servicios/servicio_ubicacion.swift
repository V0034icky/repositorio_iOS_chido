//
//  servicio_ubicacion.swift
//  juego_ra
//
//  Created by alumno on 11/5/25.
//

import Foundation
import CoreLocation

class ServicioUbicacion: NSObject, ObservableObject, CLLocationManagerDelegate{
    var manejador_ubicacion = CLLocationManager()
    
    @Published var estado_de_autorizacion: CLAuthorizationStatus?
    @Published var ubicacion_actual: CLLocationCoordinate2D?
    
    override init(){
        super.init()
        
        manejador_ubicacion.delegate = self
    }
    
    func locationManagerDidChangeAuthorization(_ manager: CLLocationManager) {
        estado_de_autorizacion = manager.authorizationStatus
        
        switch(manager.authorizationStatus){
        case .notDetermined:
            manager.requestWhenInUseAuthorization()
            
        case .authorizedWhenInUse:
            manager.requestLocation()
            
        case .denied:
            print("Que malvado es el usuario")
            
        case .restricted:
            print("Tenemos permisos restringidos para usar la ubicacion")
            
        default:
            print("Algo salió muy mal pipipi")
        }
    }
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        print("\(locations.count)")
        ubicacion_actual = locations.last?.coordinate
    }
    func locationManager(_ manager: CLLocationManager, didFailWithError error: any Error) {
        print("Obtuvimos un error: \(error.localizedDescription)")
    }
    func detener_ubicacion(){
        manejador_ubicacion.stopUpdatingLocation()
    }
}
