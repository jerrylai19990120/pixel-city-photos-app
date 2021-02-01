//
//  ViewController.swift
//  Pixel City
//
//  Created by Jerry Lai on 2021-02-01.
//  Copyright © 2021 Jerry Lai. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation

class MapVC: UIViewController {

    @IBOutlet weak var mapView: MKMapView!
    
    var locationManager = CLLocationManager()
    let authStatus = CLLocationManager.authorizationStatus()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mapView.delegate = self
        locationManager.delegate = self
        configureLocationServices()
        // Do any additional setup after loading the view.
    }

    @IBAction func centerMapBtnPressed(_ sender: Any) {
        
    }
    
}

extension MapVC: MKMapViewDelegate {
    
}

extension MapVC: CLLocationManagerDelegate {
    
    func configureLocationServices(){
        if authStatus == .notDetermined {
            locationManager.requestAlwaysAuthorization()
        } else {
            return
        }
    }
}
