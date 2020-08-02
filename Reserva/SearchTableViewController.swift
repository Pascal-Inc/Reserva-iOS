//
//  SearchTableViewController.swift
//  Reserva
//
//  Created by Granwyn Tan on 5/7/20.
//  Copyright © 2020 Pascal Inc. All rights reserved.
//

import UIKit

class SearchTableViewController: UITableViewController, UISearchBarDelegate {
    
    @IBOutlet weak var searchImageView: UIImageView!
    @IBOutlet weak var searchBar: UISearchBar!
    var filteredData: [Event]!
    var events = [
        Event(eventImage: "placeholder_image", eventName: "Singapore Food Festival", rating: 4.6, userLiked: true, eventDescription: "Fuelled by our national obsession, the Singapore Food Festival boasts tasty dishes, cooking tips and unique dining experiences", eventStartDate: "10/7/20", eventEndDate: "26/7/20", eventCategory: "Food", eventFrequency: "Annually"),
        Event(eventImage: "placeholder_image", eventName: "Grand Prix Singapore", rating: 3.9, userLiked: false, eventDescription: "A motor race which forms part of the FIA Formula One World Championship", eventStartDate: "11/7/20", eventEndDate: "20/7/20", eventCategory: "Races", eventCost: "$38", eventCostTimeLengthInDays: 1, eventFrequency: "Annually"),
        Event(eventImage: "placeholder_image", eventName: "Singapore Art Week", rating: 4.2, userLiked: false, eventDescription: "15/9/20", eventStartDate: "22/9/20", eventEndDate: "22/9/20", eventCategory: "Art", eventFrequency: "Biannually"),
        Event(eventImage: "placeholder_image", eventName: "Masks Sewn With Love", rating: 5.0, userLiked: true, eventDescription: "A community project to sew reusable cloth masks", eventCategory: "Charity and Causes", eventFrequency: "Weekly")
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
        searchBar.delegate = self
        filteredData = events
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return filteredData.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "homeCell", for: indexPath)
        
        // Configure the cell...
        
        if let cell = cell as? SearchTableViewCell {
            
            let searchStuff = events[indexPath.row]
            
            cell.searchImageView.image = UIImage(named: searchStuff.eventImage)
            cell.searchEventName.text = searchStuff.eventName
            cell.searchEventDate.text = "\(String(describing: searchStuff.eventStartDate)) - \(String(describing: searchStuff.eventEndDate))"
            cell.searchEventType.text = searchStuff.eventCategory
            
        }

        return cell
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

    // MARK: - Search Bar Configuration
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        filteredData = []
        if searchText == "" {
            filteredData = events
        } else {
            for event in events {
                if event.eventName.lowercased().contains(searchText.lowercased()){
                    filteredData.append(event)
                }
            }
        }
        tableView.reloadData()
    }
}
