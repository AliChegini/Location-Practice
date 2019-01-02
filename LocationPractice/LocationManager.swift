//
//  LocationManager.swift
//  LocationPractice
//
//  Created by Ehsan on 01/01/2019.
//  Copyright © 2019 Ali C. All rights reserved.
//

import Foundation
import CoreLocation

protocol LocationManagerDelegate: class {
    func locationManager(_ locationManager: CLLocationManager, didEnterRegion region: CLRegion)
    func locationManager(_ locationManager: CLLocationManager, didExitRegion region: CLRegion)
}

final class LocationManager: NSObject {
    private let manager = CLLocationManager()
    
    weak var delegate: LocationManagerDelegate?
    
    override init() {
        super.init()
        
        manager.delegate = self
        manager.requestAlwaysAuthorization()
    }
    
    func setupGeoFence(latitude: Double, longitude: Double, locationName: String) {
        let geoFence: CLCircularRegion = CLCircularRegion(center: CLLocationCoordinate2DMake(latitude, longitude), radius: 50, identifier: locationName)
        manager.startMonitoring(for: geoFence)
        print("Started monitoring geofence")
    }
}

extension LocationManager: CLLocationManagerDelegate {
    func locationManager(_ manager: CLLocationManager, didEnterRegion region: CLRegion) {
        delegate?.locationManager(manager, didEnterRegion: region)
    }
    
    func locationManager(_ manager: CLLocationManager, didExitRegion region: CLRegion) {
        delegate?.locationManager(manager, didExitRegion: region)
    }
}
