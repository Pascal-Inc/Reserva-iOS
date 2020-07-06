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
    
    @IBOutlet weak var getStartedButton: UIButton!
    @IBOutlet weak var signInButton: UIButton!
    
    func UIsetup () {
        titleLabel.textColor = color1
        subtitleLabel.textColor = color2
        
        getStartedButton.layer.cornerRadius = CGFloat(cornerRadius1)
        getStartedButton.backgroundColor = color1
        getStartedButton.setTitleColor(color3, for: .normal)
        
        signInButton.setTitleColor(color1, for: .normal)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        return UIsetup()
    }


}

