//
//  TabBarViewController.swift
//  Reserva
//
//  Created by Granwyn Tan on 5/7/20.
//  Copyright © 2020 Pascal Inc. All rights reserved.
//

import UIKit

class TabBarViewController: UITabBarController {
    
    @IBOutlet var Tabbar: UITabBar!
    
    func initialiseTabBar() {
        let appearance = UITabBarAppearance()
        appearance.backgroundColor = .white
        appearance.shadowColor = nil
        appearance.shadowImage = nil
        
        Tabbar.standardAppearance = appearance

    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initialiseTabBar()
        self.selectedIndex = 2
        navigationItem.setHidesBackButton(true, animated: false)
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
