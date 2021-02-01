//
//  Constants.swift
//  Pixel City
//
//  Created by Jerry Lai on 2021-02-01.
//  Copyright © 2021 Jerry Lai. All rights reserved.
//

import Foundation

let API_KEY = "ac746bfd853a381b5afea2fe4feb4038"
let API_SECRET = "21102ef6a9459578"

func flickrUrl(key: String, annotation: DroppablePin, numberOfPics: Int)->String{
    return "https://www.flickr.com/services/rest/?method=flickr.photos.search&api_key=\(API_KEY)&lat=\(annotation.coordinate.latitude)&lon=\(annotation.coordinate.longitude)&radius=1&radius_units=mi&per_page=\(numberOfPics)&format=json&nojsoncallback=1"
}

