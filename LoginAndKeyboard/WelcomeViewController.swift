//
//  WelcomeViewController.swift
//  LoginAndKeyboard
//
//  Created by Aiza on 25.08.2021.
//

import UIKit

class WelcomeViewController: UIViewController {

    @IBOutlet var welcomeLabel: UILabel!
    
    var welcomValue: String!
   
    override func viewDidLoad() {
        super.viewDidLoad()
        welcomeLabel.text! += welcomValue + "!"
    }
}
