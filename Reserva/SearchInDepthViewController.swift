
//
//  SearchInDepthViewController.swift
//  Reserva
//
//  Created by Joe Wong on 9/8/20.
//  Copyright © 2020 Pascal Inc. All rights reserved.
//

import UIKit

class SearchInDepthViewController: UIViewController {
    
    @IBOutlet weak var bookButton: UIButton!
    @IBOutlet weak var wishlistButton: UIButton!
    @IBOutlet weak var followButton: UIButton!
    @IBOutlet weak var inDepthDateLabel: UILabel!
    @IBOutlet weak var inDepthReviewLabel: UILabel!
    @IBOutlet weak var inDepthAdmission: UILabel!
    @IBOutlet weak var inDepthEventDescription: UILabel!
    @IBOutlet weak var inDepthImageView: UIImageView!
    @IBOutlet weak var inDepthEventName: UILabel!
    @IBOutlet weak var inDepthWebsiteButton: UIButton!
    @IBOutlet weak var scrollView: UIScrollView!
    
    var stuff: Event?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        scrollView.isScrollEnabled = true
        bookButton.layer.cornerRadius = 10
        followButton.layer.cornerRadius = 10
        wishlistButton.layer.cornerRadius = 10
        
        inDepthImageView.image = UIImage(named: stuff?.eventImage ?? "")
        self.title = stuff?.eventName
        inDepthEventName.text = stuff?.eventName
        inDepthEventDescription.text = stuff?.eventDescription
        inDepthAdmission.text = stuff?.eventCost ?? "$0.00"
        inDepthDateLabel.text = "\(stuff?.eventStartDate ?? "") - \(stuff?.eventEndDate ?? "")"
        inDepthReviewLabel.text = "\(stuff?.rating ?? 5.0) ⭐️"
        inDepthWebsiteButton.setTitle("www.website.com", for: .normal)
    }
    
    @IBAction func bookPressed(_ sender: Any) {
        let alert = UIAlertController(title: "You have booked for \(stuff!.eventName)", message: "Check your events for the events you signed up for!", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: {action in
            self.dismiss(animated: true, completion: nil)
            self.navigationController?.popViewController(animated: true)
            self.dismiss(animated: true, completion: nil)
        }))
        alert.addAction(UIAlertAction(title: "Cancel", style: .destructive, handler: {action in
            self.dismiss(animated: true, completion: nil)
        }))
        self.present(alert, animated: true)
        
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
