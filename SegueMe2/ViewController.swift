//
//  ViewController.swift
//  SegueMe2
//
//  Created by Cifran on 25/07/18.
//  Copyright © 2018 Cifran. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let dummyUsername = "student"
    let dummyPassword = "appleacademy"
    var lastLogin: Date?
    
    @IBOutlet weak var lastloginDate: UILabel!
    @IBOutlet weak var usernameTF: UITextField!
    @IBOutlet weak var passwordTF: UITextField!
    
    override func viewDidAppear(_ animated: Bool) {
        print("Did Appear")
        if let unwrappedLastLogin = lastLogin {
            let df = DateFormatter()
            df.dateFormat = "dd-MM-yy hh:mm"
            let str = df.string(from: unwrappedLastLogin)
            self.lastloginDate.text = "Last Login: \(str)"
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func onTapLoginBtn(_ sender: UIButton) {
        if self.usernameTF.text != dummyUsername && self.usernameTF.text != dummyPassword {
            let alert = UIAlertController(title: "Failed to sign in", message: "Your username/password is invalid", preferredStyle: .alert)
            let okAction = UIAlertAction(title: "OK", style: .default, handler: nil)
            alert.addAction(okAction)
            self.present(alert, animated: true, completion: nil)
        } else {
            // segue performed
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let vc = segue.destination as? SecondViewController {
            vc.username = self.usernameTF.text!
            vc.firstVC = self
        }
    }
}

