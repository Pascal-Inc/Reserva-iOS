//
//  SignUpViewController.swift
//  Reserva
//
//  Created by Granwyn Tan on 3/7/20.
//  Copyright © 2020 Pascal Inc. All rights reserved.
//

import UIKit

class SignUpViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBAction func signUpClick(_ sender: Any) {
        // Do some firebase stuff before pushing/showing sign in screen
    }
    @IBAction func signInClick(_ sender: Any) {
        // Dismiss screen
        self.navigationController?.popViewController(animated: true)
    }
    @IBAction func dismissKeyboard(_ sender: UITextField) {
        sender.resignFirstResponder()
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
