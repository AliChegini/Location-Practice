//
//  ViewController.swift
//  LocationPractice
//
//  Created by Ehsan on 28/12/2018.
//  Copyright © 2018 Ali C. All rights reserved.
//

import UIKit
import CoreLocation
import UserNotifications


protocol ViewControllerDelegate: class {
    func setupGeoFence(latitude: Double, longitude: Double, locationName: String)
}


class ViewController: UIViewController {

    weak var delegate: ViewControllerDelegate?
    
    let locationManager = LocationManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Not sure what to call and how to implement this the right way
        
        //delegate?.setupGeoFence(latitude: <#T##Double#>, longitude: <#T##Double#>, locationName: <#T##String#>)
        // or
        
        locationManager.setupGeoFence(latitude: 55.55555, longitude: 12.34234, locationName: "home")
        
        
    }
}

