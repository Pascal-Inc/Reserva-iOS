//
//  LocationViewController.swift
//  Reserva
//
//  Created by Ho Jon Yew on 6/7/20.
//  Copyright © 2020 Pascal Inc. All rights reserved.
//

import UIKit

class LocationViewController: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
        @IBOutlet weak var subtitleLabel: UILabel!
        
        @IBOutlet weak var useLocationButton: UIButton!
        @IBOutlet weak var chooseCityButton: UIButton!
        
        
        
        func UIsetup () {
            
            titleLabel.textColor = color1
            subtitleLabel.textColor = color2
            
            useLocationButton.layer.cornerRadius = CGFloat(cornerRadius1)
            useLocationButton.backgroundColor = color1
            useLocationButton.setTitleColor(color3, for: .normal)
            chooseCityButton.setTitleColor(color1, for: .normal)
        }
        
        override func viewDidLoad() {
            super.viewDidLoad()
            return UIsetup()
        }


    }
