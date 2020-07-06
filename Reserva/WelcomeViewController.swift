//
//  ViewController.swift
//  Reserva
//
//  Created by Granwyn Tan on 3/7/20.
//  Copyright © 2020 Pascal Inc. All rights reserved.
//

import UIKit

class WelcomeViewController: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var subtitleLabel: UILabel!
    
    func UIsetup () {
        titleLabel.textColor = UIColor(red: 114/255, green: 147/255, blue: 255/255, alpha: 1.0)
        subtitleLabel.textColor = UIColor(red: 60/255, green: 60/255, blue: 60/255, alpha: 1.0)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        return UIsetup()
    }


}

