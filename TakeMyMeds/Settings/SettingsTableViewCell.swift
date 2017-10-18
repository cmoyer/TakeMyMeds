//
//  SettingsTableViewCell.swift
//  TakeMyMeds
//
//  Created by Chad Moyer on 10/18/17.
//  Copyright © 2017 Chad Moyer. All rights reserved.
//

import UIKit

class SettingsTableViewCell: UITableViewCell {
    
    @IBOutlet weak var iconImage: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    
    func configureWithSettingsItem(item: SettingsItem) {
        let icon = item.icon
        let title = item.title
        
        iconImage.image = UIImage(named: icon)
        titleLabel.text = title
    }
}
