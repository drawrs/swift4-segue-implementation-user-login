//
//  SecondViewController.swift
//  SegueMe2
//
//  Created by Cifran on 25/07/18.
//  Copyright © 2018 Cifran. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var datePicker: UIDatePicker!
    
    var username = ""
    var firstVC: ViewController?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.label.text = "Hi \(username), please input your birthdate"
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let vc = segue.destination as? ThirdViewController {
            vc.previousVC = self
            vc.birthdate = self.datePicker.date
            vc.username = self.username
            vc.firstVC = self.firstVC
        }
    }
}
