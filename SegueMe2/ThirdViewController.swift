//
//  ThirdViewController.swift
//  SegueMe2
//
//  Created by Cifran on 25/07/18.
//  Copyright © 2018 Cifran. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {
    var firstVC: ViewController?
    var previousVC: SecondViewController?
    var birthdate: Date?
    var username: String?
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var usernameLabel: UILabel!
    @IBOutlet weak var birthdateLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.imageView.backgroundColor = UIColor.red
        self.imageView.layer.cornerRadius = self.imageView.frame.height / 2
        self.imageView.image = UIImage(named: "pro_pic")
        self.imageView.layer.masksToBounds = true
        
        self.usernameLabel.text = username
        if let unwrappedBirthdate = birthdate {
            let df = DateFormatter()
            df.dateFormat = "dd MMM yyyy"
            self.birthdateLabel.text = df.string(from: unwrappedBirthdate)
        }
    }
    
    @IBAction func onTapLogoutBtn(_ sender: UIButton) {
        self.firstVC?.lastLogin = Date()
        self.dismiss(animated: false) {
            self.previousVC?.dismiss(animated: true, completion: nil)
        }
//        self.presentingViewController?.presentingViewController?.dismiss(animated: true, completion: nil)
    }
    
}
