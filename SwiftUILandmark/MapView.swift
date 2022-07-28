//
//  MapView.swift
//  SwiftUILandmark
//
//  Created by Burak Öztopuz on 26.07.2022.
//

import SwiftUI
import MapKit


struct MapView: UIViewRepresentable {
    
    var coordinate : CLLocationCoordinate2D
    
    func updateUIView(_ uiView: UIViewType, context: Context) {
        let span = MKCoordinateSpan(latitudeDelta: 0.03, longitudeDelta: 0.03)
        let region = MKCoordinateRegion(center: coordinate, span: span)
        uiView.setRegion(region, animated: true)
    }
    
    func makeUIView(context: Context) -> MKMapView {
        MKMapView(frame: .zero)
    }
    
    
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView(coordinate: landmarkArray[0].locationCoordinates)
    }
}
