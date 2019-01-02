//
//  LocationManager.swift
//  LocationPractice
//
//  Created by Ehsan on 01/01/2019.
//  Copyright © 2019 Ali C. All rights reserved.
//

import Foundation
import CoreLocation


class LocationManager: NSObject, ViewControllerDelegate, CLLocationManagerDelegate {
    
    private let manager = CLLocationManager()
    
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

// Delegate methods
extension LocationManager {
    
    func locationManager(_ manager: CLLocationManager, didEnterRegion region: CLRegion) {
        print("sending enter notification to user")
    }
    
    func locationManager(_ manager: CLLocationManager, didExitRegion region: CLRegion) {
        print("sending exit notification to user")
    }
}




