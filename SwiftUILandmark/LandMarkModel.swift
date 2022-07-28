//
//  LandMarkModel.swift
//  SwiftUILandmark
//
//  Created by Burak Öztopuz on 26.07.2022.
//

import SwiftUI
import CoreLocation

struct Landmark : Identifiable {
    
    var id : Int
    var name : String
    var imgName : String
    var country : String
    var category : String
    var coordinates : Coordinates
    
    
    var locationCoordinates : CLLocationCoordinate2D{
        CLLocationCoordinate2D(latitude: coordinates.latitude, longitude: coordinates.longitude)
    }
}

struct Coordinates {
    var latitude : Double
    var longitude : Double
}


let eiffel = Landmark(id: 0, name: "Eiffel", imgName: "eiffel", country: "France", category: "Tower", coordinates: Coordinates(latitude: 48.858394268798165 , longitude: 2.2948227689523613))
let colosseum = Landmark(id: 1, name: "Colosseum", imgName: "colosseum", country: "Italy", category: "Historic Area", coordinates: Coordinates(latitude: 41.890332945014734 , longitude: 12.491059814239302))
let pisa = Landmark(id: 2, name: "Pisa", imgName: "pisa", country: "Italy", category: "Building", coordinates: Coordinates(latitude: 43.725232147687, longitude:  10.404818966346724))
let sydney = Landmark(id: 3, name: "Opera House", imgName: "opera", country: "Australia", category: "Opera", coordinates: Coordinates(latitude: -31.82651468569193 , longitude: 155.82679687659203))
let london = Landmark(id: 4, name: "London Bridge", imgName: "london", country: "United Kingdom", category: "Bridge", coordinates: Coordinates(latitude: 51.508109917844784 , longitude: -0.08847513581205238))

let landmarkArray = [eiffel, colosseum, london, sydney, pisa]
