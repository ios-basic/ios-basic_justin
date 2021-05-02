//
//  MapKitViewController.swift
//  Chapter03-Alert
//
//  Created by justin dongwook Jung on 2021/05/02.
//

import UIKit
import MapKit

class MapKitViewController: UIViewController {
    override func viewDidLoad() {
        let mapkitVIew = MKMapView(frame: CGRect(x: 0, y: 0, width: 0, height: 0))
        self.view = mapkitVIew
        self.preferredContentSize.height = 200
        
        let pos = CLLocationCoordinate2D(latitude: 37.514322, longitude: 126.894623)
        let span = MKCoordinateSpan(latitudeDelta: 0.005, longitudeDelta: 0.005)
        
        let region = MKCoordinateRegion(center: pos, span: span)
        
        mapkitVIew.region = region
        mapkitVIew.regionThatFits(region)
        
        let point = MKPointAnnotation()
        point.coordinate = pos
        mapkitVIew.addAnnotation(point)
    }
    
    
}
