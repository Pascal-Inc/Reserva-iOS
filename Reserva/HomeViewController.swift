//
//  HomeViewController.swift
//  Reserva
//
//  Created by Ho Jon Yew on 11/7/20.
//  Copyright © 2020 Pascal Inc. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet var EventSelection: UISegmentedControl!
    
    func UISetup() {
        EventSelection.selectedSegmentTintColor = color1
        EventSelection.setTitleTextAttributes([NSAttributedString.Key.foregroundColor: color3], for: .selected)
        
    }
    
    let items = ["Booked Events","My Events"]
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        arrayName.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "homeCell", for: indexPath)

        // Configure the cell...
        if let cell = cell as? HomeTableViewCell {
            let homeStuff = arrayName[indexPath.row]
            cell.homeCellImage.image = UIImage(named: homeStuff.eventimage)
            cell.homeCellEventName.text = homeStuff.eventname
            cell.homeCellEventType.text = homeStuff.eventtype
            cell.homeCellEventDate.text = homeStuff.eventdate
        }

        return cell
    }
    
    
    @IBOutlet weak var homeTableView: UITableView!
    // @IBOutlet weak var browseButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        return UISetup()
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
