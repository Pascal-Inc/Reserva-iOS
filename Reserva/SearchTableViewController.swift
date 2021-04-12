//
//  SearchTableViewController.swift
//  Reserva
//
//  Created by Granwyn Tan on 5/7/20.
//  Copyright © 2020 Pascal Inc. All rights reserved.
//

import UIKit

class SearchTableViewController: UITableViewController, UISearchBarDelegate {
    
    @IBOutlet weak var searchBar: UISearchBar!
    var filteredData: [Event]!
    
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
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "eventsCell", for: indexPath)
        
        // Configure the cell...
        
        if let cell = cell as? SearchTableViewCell {
            
            let searchStuff = filteredData[indexPath.row]
            cell.searchImageView.image = UIImage(named: searchStuff.eventImage)
            cell.searchEventName.text = searchStuff.eventName
            cell.searchEventDescription.text = searchStuff.eventDescription
            if searchStuff.eventStartDate != nil && searchStuff.eventEndDate != nil {
                cell.searchEventDate.text = "\(searchStuff.eventStartDate ?? "") - \(searchStuff.eventEndDate ?? "")"
            } else {
                cell.searchEventDate.text = ""
            }
            cell.searchEventType.text = searchStuff.eventCategory
        }

        return cell
    }
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 120
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.performSegue(withIdentifier: "searchInDepth", sender: nil)
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


    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        if segue.identifier == "searchInDepth" {
            let dest = segue.destination as! SearchInDepthViewController
            let indexPath = tableView.indexPathForSelectedRow
            dest.stuff = filteredData[indexPath!.row]
        }
        // Pass the selected object to the new view controller.
    }


    // MARK: - Search Bar Configuration
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        filteredData = []
        if searchText == "" {
            filteredData = events
        } else {
            for event in events {
                var shouldAppendEvent = false
                if event.eventCategory.lowercased().contains(searchText.lowercased()) {
                    shouldAppendEvent = true
                }
                
                if event.eventName.lowercased().contains(searchText.lowercased()) {
                    shouldAppendEvent = true
                }
                
                if event.eventDescription.lowercased().contains(searchText.lowercased()){
                    shouldAppendEvent = true
                }
                
                if event.eventFrequency.lowercased().contains(searchText.lowercased()) {
                    shouldAppendEvent = true
                }
                
                if event.eventCost != nil {
                    if event.eventCost!.lowercased().contains(searchText.lowercased()) {
                        shouldAppendEvent = true
                    }
                }
                if event.eventStartDate != nil {
                    if event.eventStartDate!.lowercased().contains(searchText.lowercased()) {
                        shouldAppendEvent = true
                    }
                }
                
                if event.eventEndDate != nil {
                    if event.eventEndDate!.lowercased().contains(searchText.lowercased()) {
                        shouldAppendEvent = true
                    }
                }
                
                if event.eventCostTimeLengthInDays != nil {
                    if searchText.lowercased().contains("\(event.eventCostTimeLengthInDays!)") {
                        shouldAppendEvent = true
                    }
                }
                
                if shouldAppendEvent == true {
                    filteredData.append(event)
                }
            }
        }
        tableView.reloadData()
    }
    
    // MARK: Filter button configuration
    
    
    @IBAction func filterPressed(_ sender: Any) {
        let alert = UIAlertController(title: "Filter what", message: "e.g. Food", preferredStyle: .alert)
        alert.addTextField(configurationHandler: { textField in
            textField.placeholder = "Filter"
        })
        alert.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: nil))
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: { action in

            if let filter = alert.textFields?.first?.text {
                print("Your filter: \(filter)")
            }
        }))
        self.present(alert, animated: true)
    }
}
