//
//  GetLocationViewController.swift
//  Reserva
//
//  Created by Granwyn Tan on 5/7/20.
//  Copyright © 2020 Pascal Inc. All rights reserved.
//

import UIKit
import MapKit

var userLatitude: Any?
var userLongitude: Any?
class GetLocationViewController: UIViewController, CLLocationManagerDelegate {

    var currentLocation: CLLocationCoordinate2D?
    @IBOutlet weak var map: MKMapView!
    var locationManager = CLLocationManager()
    var defaults = UserDefaults.standard
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        defaults.set(false, forKey: "setLocationAlready")
    }
    override func viewDidAppear(_ animated: Bool) {
        self.locationManager.requestWhenInUseAuthorization()
        if CLLocationManager.authorizationStatus() == .notDetermined {
            locationManager.delegate = self
            locationManager.desiredAccuracy = kCLLocationAccuracyBest
            locationManager.startUpdatingLocation()
        } else if CLLocationManager.authorizationStatus() == .denied ||  CLLocationManager.authorizationStatus() == .restricted {
            let alert = UIAlertController(title: "Location access denied for \"Reserva\"", message: "Allow \"Reserva\" to access your location?", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Open Settings", style: .cancel, handler: {action in
                UIApplication.shared.open(URL(string: UIApplication.openSettingsURLString)!, options: [:], completionHandler: nil)
            }))
            alert.addAction(UIAlertAction(
                title: "Select Location Manually", style: .default, handler: {action in
                self.performSegue(withIdentifier: "manualLocation", sender: nil)
            }))
            alert.addAction(UIAlertAction(
                title: "Cancel", style: .destructive, handler: /*{action in
                    // exit app
                    exit(0);
            }*/
                // do not do the above as it does not abide by iOS Human Interface Guidelines
                nil
            ))
            self.present(alert, animated: true, completion: nil)
        }
    }
    
    @IBAction func nextClick(_ sender: Any) {
        let setLocationAlready = defaults.bool(forKey: "setLocationAlready")
        if setLocationAlready != true {
            locationManager.stopUpdatingLocation()
            defaults.set(userLatitude, forKey: "userLatitude")
            defaults.set(userLongitude, forKey: "userLongitude")
            self.performSegue(withIdentifier: "seeAccount", sender: nil)
            defaults.set(true, forKey: "setLocationAlready")
        }
    }
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        currentLocation = manager.location!.coordinate
        userLatitude = currentLocation!.latitude
        userLongitude = currentLocation!.longitude
        print("Locations = \(currentLocation!.latitude), \(currentLocation!.longitude)")
        let userLocation = locations.last
        let viewRegion = MKCoordinateRegion(center: (userLocation?.coordinate)!, latitudinalMeters: 600, longitudinalMeters: 600)
        self.map.setRegion(viewRegion, animated: true)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
