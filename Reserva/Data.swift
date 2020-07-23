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
}



var arrayName = [homeEvents(eventname: "dummyData", eventtype: "dummyData", eventdate: "dummyData", eventimage: "placeholder_image")]

var color1 = UIColor(red: 114/255, green: 147/255, blue: 255/255, alpha: 1.0)
var color2 = UIColor(red: 60/255, green: 60/255, blue: 60/255, alpha: 1.0)
var color3 = UIColor(red: 255/255, green: 255/255, blue: 255/255, alpha: 1.0)

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



   /* func buttonstyle1() {
        layer.cornerRadius = CGFloat(cornerRadius1)
        backgroundColor = color1
        setTitleColor(color3, for: .normal)
    }
 */

