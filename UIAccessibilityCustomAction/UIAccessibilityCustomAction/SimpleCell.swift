//
//  SimpleCell.swift
//  UIAccessibilityCustomAction
//
//  Created by Madriz on 30/1/17.
//  Copyright © 2017 MMApps. All rights reserved.
//

import UIKit

class SimpleCell: UITableViewCell {
    @IBOutlet var phoneButton: UIButton?
    @IBOutlet var mailButton: UIButton?
    @IBOutlet var label: UILabel?
    
    override func awakeFromNib() {
        phoneButton?.accessibilityLabel = "Phone"
        phoneButton?.isAccessibilityElement = true
        phoneButton?.accessibilityHint = "Double tap to start a call"
        
        mailButton?.accessibilityLabel = "Mail"
        mailButton?.isAccessibilityElement = true
        mailButton?.accessibilityHint = "Double tap to write an email"
        
        contentView.isAccessibilityElement = true
        contentView.accessibilityLabel = label?.text
        contentView.accessibilityHint = "Double tap to open details"
    }
    
    @IBAction func phoneButtonClicked () {
        print("phoneButtonClicked")
    }
    
    @IBAction func mailButtonClicked () {
        print("mailButtonClicked")
    }
}
