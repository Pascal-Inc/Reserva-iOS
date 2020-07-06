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
        titleLabel.textColor = color1
        subtitleLabel.textColor = color2
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        return UIsetup()
    }


}

