//
//  SettingsTableViewController.swift
//  Reserva
//
//  Created by Granwyn Tan on 5/7/20.
//  Copyright © 2020 Pascal Inc. All rights reserved.
//

import UIKit

class SettingsTableViewController: UITableViewController {

    var row1 = ["Account Details"]
    var row1Detail = ["Name, Email, Phone Number"]
    var row2 = ["Location"]
    var row2Detail = ["City Name: \(userLongitude ?? 0.0), \(userLatitude ?? 0.0)"]
    var row3 = ["Privacy"]
    var row3Detail = ["Terms of Service, Privacy Policy"]
    var row4 = ["Notifications"]
    var row4Detail = ["Room Bookings, Upcoming Events"]
    var row5 = ["About Us"]
    var row5Detail = ["Pascal Inc."]
    var row6 = ["Log Out"]
    var row6Detail = [""]
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 6
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)

        // Configure the cell...
        var cellMainText = ""
        var cellSubText = ""
        if indexPath.row == 0 {
            cellMainText = row1[0]
            cellSubText = row1Detail[0]
        } else if indexPath.row == 1 {
            cellMainText = row2[0]
            cellSubText = row2Detail[0]
        } else if indexPath.row == 2 {
            cellMainText = row3[0]
            cellSubText = row3Detail[0]
        } else if indexPath.row == 3 {
            cellMainText = row4[0]
            cellSubText = row4Detail[0]
        } else if indexPath.row == 4 {
            cellMainText = row5[0]
            cellSubText = row5Detail[0]
        } else if indexPath.row == 5 {
            cellMainText = row6[0]
            cellSubText = row6Detail[0]
        }

        cell.textLabel?.text = cellMainText
        cell.detailTextLabel?.text = cellSubText
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

}
