//
//  ViewController.swift
//  login-sample
//
//  Created by divani fuentes marcos on 25/05/20.
//  Copyright © 2020 divani fuentes marcos. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var user:User?
    
    @IBOutlet weak var emailInput: UITextField!
    @IBOutlet weak var passwordInput: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Set the harcoded user
        user = User(name:"Test", email:"prueba@prueba.com", password: "prueba")
    }

    @IBAction func loginButton(_ sender: UIButton) {
        if user!.email == emailInput.text && user!.password == passwordInput.text {
            performSegue(withIdentifier: "toLogged", sender: self)
        } else {
            let alert = UIAlertController(title: "Login failed", message: "Please check your info", preferredStyle: .alert)

            alert.addAction(UIAlertAction(title: "Ok", style: .default, handler: nil))

            self.present(alert, animated: true)
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        let destinationVC = segue.destination as! LoggedViewController
        destinationVC.loggedUser = self.user
    }
}

