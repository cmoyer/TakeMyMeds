//
//  MyMedsTableViewCell.swift
//  TakeMyMeds
//
//  Created by Chad Moyer on 11/6/17.
//  Copyright © 2017 Chad Moyer. All rights reserved.
//

import UIKit

class MyMedsTableViewCell: UITableViewCell {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var strengthLabel: UILabel!
    @IBOutlet weak var remindersLabel: UILabel!
    @IBOutlet weak var backgroundCardView: UIView!
    
    func configureWithMedData(data: Med) {
        let medName = data.name
        let medStrength = data.strength
        let medReminders = data.reminders
        
        nameLabel.text = medName
        strengthLabel.text = medStrength
        
        if medReminders.count == 0 {
            remindersLabel.text = "No Reminders Set"
        } else if medReminders.count > 1 {
            remindersLabel.text = "Multiple Reminders"
        } else {
            remindersLabel.text = medReminders[0]
        }
        
        // Finish styling the cell
        backgroundCardView.layer.cornerRadius = 3.0
        backgroundCardView.layer.masksToBounds = false
        
        let shadowColor = UIColor(red: 0.0/255.0, green: 0.0/255/0, blue: 0.0/255.0, alpha: 0.2)
        backgroundCardView.layer.shadowColor = shadowColor.cgColor
        backgroundCardView.layer.shadowOffset = CGSize(width: 0, height: 3.0)
        backgroundCardView.layer.shadowOpacity = 0.8
        
        // Change the background color of the cell to clear
        self.backgroundColor = UIColor.clear
    }
}
