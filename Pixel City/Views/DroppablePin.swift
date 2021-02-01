//
//  DroppablePin.swift
//  Pixel City
//
//  Created by Jerry Lai on 2021-02-01.
//  Copyright © 2021 Jerry Lai. All rights reserved.
//

import Foundation
import UIKit
import MapKit

class DroppablePin:NSObject, MKAnnotation {
    
    var coordinate: CLLocationCoordinate2D
    var identifier: String
    
    init(coord: CLLocationCoordinate2D, identifier: String){
        self.coordinate = coord
        self.identifier = identifier
        super.init()
    }
    
    
}
