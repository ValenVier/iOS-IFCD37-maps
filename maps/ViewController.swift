//
//  ViewController.swift
//  maps
//
//  Created by Javier Rodríguez Valentín on 23/09/2021.
//

import UIKit
import MapKit //para usar mapas
import CoreLocation //para acceder a localización

class ViewController: UIViewController, MKMapViewDelegate {

    @IBOutlet weak var map: MKMapView! //hay que importar MapKit
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //mapa tipo satélite
        map.mapType = MKMapType.satellite
        map.delegate = self
        map.showsUserLocation = true
        
    }

    func mapView(_ mapView: MKMapView, didUpdate userLocation: MKUserLocation) {
        print("estoy localizado")
    }

}

