//
//  InDepthSettingsViewController.swift
//  Reserva
//
//  Created by Granwyn Tan on 12/11/20.
//  Copyright © 2020 Pascal Inc. All rights reserved.
//

import UIKit

class InDepthSettingsViewController: UIViewController {
    
    var settingName: String?

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.title = settingName ?? ""
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
