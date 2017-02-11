//
//  AccessibleCell.swift
//  UIAccessibilityCustomAction
//
//  Created by Madriz on 30/1/17.
//  Copyright © 2017 MMApps. All rights reserved.
//

import UIKit

class AccessibleCell: UITableViewCell {
    @IBOutlet var phoneButton: UIButton?
    @IBOutlet var mailButton: UIButton?
    @IBOutlet var label: UILabel?
    
    override func awakeFromNib() {
        phoneButton?.isAccessibilityElement = false
        mailButton?.isAccessibilityElement = false
        
        accessibilityElements = []
        
        isAccessibilityElement = true
        accessibilityLabel = label?.text
        accessibilityHint = "Double tap to open details"
        
        accessibilityCustomActions = [
            UIAccessibilityCustomAction(name: "call person", target: self, selector: #selector(self.phoneButtonClicked)),
            UIAccessibilityCustomAction(name: "mail person", target: self, selector: #selector(self.mailButtonClicked))
        ]
    }
    
    func phoneButtonClicked () -> Bool {
        print("phoneButtonClicked")
        return true
    }
    
    func mailButtonClicked () -> Bool {
        print("mailButtonClicked")
        return true
    }

}
