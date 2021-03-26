//
//  ViewController.swift
//  Login
//
//  Created by Ventayen, Harrold on 3/25/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var username: UITextField!
    
   
    @IBOutlet weak var forgotUserName: UIButton!
    
    
    @IBOutlet weak var forgotPassword: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let sender = sender as? UIButton else { return }
        if sender == forgotUserName {
            segue.destination.navigationItem.title = "Forgot Username"
        } else if sender == forgotPassword {
            segue.destination.navigationItem.title = "Forgot Password"
        } else {
            segue.destination.navigationItem.title = username.text
        }
    }

    
    
    @IBAction func forgotUserNameButton(_ sender: UIButton) {
        performSegue(withIdentifier: "logInUserOrPass", sender: forgotUserName)
    }
    
    
    @IBAction func forgotPasswordButton(_ sender: UIButton) {
        performSegue(withIdentifier: "logInUserOrPass", sender: forgotPassword)
    }
    
}

