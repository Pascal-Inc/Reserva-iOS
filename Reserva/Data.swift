//
//  Data.swift
//  Reserva
//
//  Created by Ho Jon Yew on 6/7/20.
//  Copyright © 2020 Pascal Inc. All rights reserved.
//

import Foundation
import UIKit


struct homeEvents{
    var eventname : String
    var eventtype: String
    var eventdate: String
    var eventimage: String
    var eventdesc: String
}



var arrayName = [homeEvents(eventname: "dummyData", eventtype: "dummyData", eventdate: "dummyData", eventimage: "placeholder_image", eventdesc: "dummyData")]

var color1: UIColor? = UIColor(red: 114/255, green: 147/255, blue: 255/255, alpha: 1.0)
var color2: UIColor? = UIColor(red: 60/255, green: 60/255, blue: 60/255, alpha: 1.0)
var color3: UIColor? = UIColor(red: 255/255, green: 255/255, blue: 255/255, alpha: 1.0)

var cornerRadius1 = 5


class ButtonCustomStyle1: UIButton {
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        layer.cornerRadius = CGFloat(cornerRadius1)
        backgroundColor = color1
        setTitleColor(color3, for: .normal)
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
    }
        
}

struct Event {
    var eventImage: String
    var eventName: String // e.g. "Singapore Food Festival"
    var rating: Double // e.g. "4.6" (use round to 1dp function thing) -> Double(format: %.3f, rating)
    var userLiked: Bool // for the heartshape thing to be empty or filled
    var eventDescription: String
    var eventStartDate: String? // DD/MM/YYYY e.g. 11/07/2020
    var eventEndDate: String? // DD/MM/YYYY e.g. 20/07/2020
    var eventCategory: String // e.g. Charity and Causes, will have a tagalong photo in class
    var eventCost: String?
    /*
     Beginning with $ (sgd)
    
     e.g.
     $38
     
     Optional as some may be foc, making text a string: "Free Admission"
     */
    var eventCostTimeLengthInDays: Int? // e.g. 1 Night or 5 Day, Optional as some may be foc, making text a string: "Free Admission", or some may be per entry which does not include time period
    var eventFrequency: String // e.g. Weekly
}

var events = [
    Event(eventImage: "placeholder_image", eventName: "Singapore Food Festival", rating: 4.6, userLiked: true, eventDescription: "Fuelled by our national obsession, the Singapore Food Festival boasts tasty dishes, cooking tips and unique dining experiences", eventStartDate: "10/7/20", eventEndDate: "26/7/20", eventCategory: "Food", eventFrequency: "Annually"),
    Event(eventImage: "placeholder_image", eventName: "Grand Prix Singapore", rating: 3.9, userLiked: false, eventDescription: "A motor race which forms part of the FIA Formula One World Championship", eventStartDate: "11/7/20", eventEndDate: "20/7/20", eventCategory: "Races", eventCost: "$38", eventCostTimeLengthInDays: 1, eventFrequency: "Annually"),
    Event(eventImage: "placeholder_image", eventName: "Singapore Art Week", rating: 4.2, userLiked: false, eventDescription: "An event to showcase a range of quality visual arts projects, discussions, and exhibitions to a local and international audience", eventStartDate: "15/9/20", eventEndDate: "22/9/20", eventCategory: "Art", eventFrequency: "Biannually"),
    Event(eventImage: "placeholder_image", eventName: "Masks Sewn With Love", rating: 5.0, userLiked: true, eventDescription: "A community project to sew reusable cloth masks", eventCategory: "Charity and Causes", eventFrequency: "Weekly")
]

struct Setting {
    var row : String
    var rowDetail : String
}

var settingArray = [Setting(row: "Account Details", rowDetail: "Name, Email, Phone Number"), Setting(row: "Location", rowDetail: "City Name: \(userLongitude ?? 0.0), \(userLatitude ?? 0.0)"), Setting(row: "Privacy", rowDetail: "Terms of Service, Privacy Policy"), Setting(row: "Notifications", rowDetail: "Room Bookings, Upcoming Events"), Setting(row: "About Us", rowDetail: "Pascal Inc."), Setting(row: "Log Out", rowDetail: "")]



   /* func buttonstyle1() {
        layer.cornerRadius = CGFloat(cornerRadius1)
        backgroundColor = color1
        setTitleColor(color3, for: .normal)
    }
 */

