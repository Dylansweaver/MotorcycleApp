//
//  ViewController.swift
//  MotorcycleApp
//
//  Created by Dylan Sebastian Weaver on 3/13/17.
//  Copyright © 2017 Dylan Sebastian Weaver. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

extension ViewController : CLLocationManagerDelegate {
        func locationManager(manager: CLLocationManager, didChangeAuthorizationStatus status: CLAuthorizationStatus) {
            if status == .AuthorizedWhenInUse {
                locationManager.requestLocation()
            }
        }
        
        func locationManager(manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
            if let location = locations.first {
                print("location:: (location)")
            }
        }
        
        func locationManager(manager: CLLocationManager, didFailWithError error: NSError) {
            print("error:: (error)")
        }
    }

}

