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
    

    @IBOutlet var getStartedButton: UIButton!
    @IBOutlet weak var signInButton: UIButton!
    
   
    func UIsetup () {
        
        titleLabel.textColor = color1
        subtitleLabel.textColor = color2
        getStartedButton = ButtomCustomStyle1()
        signInButton.setTitleColor(color1, for: .normal)
        //print("xd")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        return UIsetup()
    }


}

