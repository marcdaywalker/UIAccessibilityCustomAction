//
//  ViewController.swift
//  UIAccessibilityCustomAction
//
//  Created by Madriz on 12/1/17.
//  Copyright © 2017 MMApps. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {
    
    
    @IBOutlet weak var label: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        label.accessibilityCustomActions = [
            UIAccessibilityCustomAction(name: "change number", target: self, selector: #selector(self.qwer))
        ]
    }
    
    func qwer() {
        label.text = String("\(NSDate().timeIntervalSince1970)")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

