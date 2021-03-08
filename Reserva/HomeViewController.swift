//
//  HomeViewController.swift
//  Reserva
//
//  Created by Ho Jon Yew on 11/7/20.
//  Copyright © 2020 Pascal Inc. All rights reserved.
//

import UIKit
import Firebase

class HomeViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet var EventSelection: UISegmentedControl!
    @IBOutlet weak var searchBar: UISearchBar!
    
    var eventDisplayType = "Booked events"
    var docRef: DocumentReference!
    
    /*@IBAction func eventTypeSelected(_ sender: Any) {
    }*/
    
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if EventSelection.selectedSegmentIndex == 0 {
            return arrayName.count
        }
        return arrayName.count
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
//        if EventSelection.selectedSegmentIndex == 0 {
//            
//        }
        return 120
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "homeCell", for: indexPath)
        // Configure the cell...
        if EventSelection.selectedSegmentIndex == 0 {
            if let cell = cell as? HomeTableViewCell {
                let homeStuff = arrayName[indexPath.row]
                cell.homeImageView.image = UIImage(named: homeStuff.eventimage)
                cell.homeEventName.text = homeStuff.eventname
                cell.homeEventType.text = homeStuff.eventtype
                cell.homeEventDate.text = homeStuff.eventdate
                cell.homeEventDesc.text = homeStuff.eventdesc
            }
        }
        /*if EventSelection.selectedSegmentIndex == 0 {
            
        } else {
            // if let cell = cell as? /* SomeTableViewCell*/ {
                /*
                let someStuff = arrayName[indexPath.row]
                cell.someCellImage.image = UIImage(named: someStuff.eventimage)
                cell.homeCellEventName.text = someStuff.eventname
                cell.homeCellEventType.text = someStuff.eventtype
                cell.homeCellEventDate.text = someStuff.eventdate
                
            }*/
        }*/

        return cell
    }
    
    
    @IBOutlet weak var homeTableView: UITableView!
    // @IBOutlet weak var browseButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        EventSelection.selectedSegmentTintColor = color1
        EventSelection.setTitleTextAttributes([NSAttributedString.Key.foregroundColor: color3!], for: .selected)
        EventSelection.setTitleTextAttributes([NSAttributedString.Key.foregroundColor: color1!], for: .normal)
        tableView.dataSource = self
        tableView.delegate = self
        docRef = Firestore.firestore().collection("Events").document("rPMkYHZtRZUqNeiJAzX3")
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
