//
//  SignInViewController.swift
//  Reserva
//
//  Created by Granwyn Tan on 3/7/20.
//  Copyright © 2020 Pascal Inc. All rights reserved.
//

import UIKit

class SignInViewController: UIViewController {

    let defaults = UserDefaults.standard
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func checkBoxClick(_ sender: Any) {
    }
    
    @IBAction func signUpClick(_ sender: Any) {
        // Push/show sign up screen
        
    }
    @IBAction func signInClick(_ sender: Any) {
        // Do some firebase stuff before pushing/showing choose location screen
        performSegue(withIdentifier: "signedIn", sender: nil)
    }
    @IBAction func skipClick(_ sender: Any) {
        // Just sign in directly, first ask to set name
        performSegue(withIdentifier: "signedIn", sender: nil)
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
