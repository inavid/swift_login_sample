//
//  LoggedViewController.swift
//  login-sample
//
//  Created by divani fuentes marcos on 25/05/20.
//  Copyright © 2020 divani fuentes marcos. All rights reserved.
//

import UIKit

class LoggedViewController: UIViewController {

    var loggedUser: User?
    
    @IBOutlet weak var welcomeLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        welcomeLabel.text = "Bienvenido \(loggedUser!.name)"
    }
    
    @IBAction func logoutAction(_ sender: UIButton) {
        // This way we go back on views queue if our segue is of type show
        //self.navigationController?.popViewController(animated: true)
        
        // This way we go back on views queue if our segue is of type present modally
        self.dismiss(animated: true, completion: nil)
    }
    

}
