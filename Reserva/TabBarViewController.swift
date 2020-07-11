//
//  TabBarViewController.swift
//  Reserva
//
//  Created by Granwyn Tan on 5/7/20.
//  Copyright © 2020 Pascal Inc. All rights reserved.
//

import UIKit

class TabBarViewController: UITabBarController {
    
    func initialiseTabBar() {
        let HomeVC = HomeViewController()
        let BrowseVC = BrowseViewController()
        let TabBarViewController = UITabBarController()
        TabBarViewController.viewControllers = [HomeVC,BrowseVC]
        TabBarViewController.selectedViewController = HomeVC
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        return initialiseTabBar()
        // Do any additional setup after loading the view.
        
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
