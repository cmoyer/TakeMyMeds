//
//  MyDoctorsTableViewCell.swift
//  TakeMyMeds
//
//  Created by Chad Moyer on 10/23/17.
//  Copyright © 2017 Chad Moyer. All rights reserved.
//

import UIKit

class MyDoctorsTableViewCell: UITableViewCell {

    @IBOutlet weak var doctorLabel: UILabel!
    @IBOutlet weak var phoneLabel: UILabel!
    @IBOutlet weak var addressLabel: UILabel!
    @IBOutlet weak var backgroundCardView: UIView!
    
    func configureWithDoctorData(data: Doctor) {
        let docName = data.name
        let docPhone = data.phone
        let docAddress = data.address
        
        doctorLabel.text = docName
        phoneLabel.text = docPhone
        addressLabel.text = docAddress
        
        // Finish styling the cell
        backgroundCardView.layer.cornerRadius = 3.0
        backgroundCardView.layer.masksToBounds = false
        
        let shadowColor = UIColor(red: 0.0/255.0, green: 0.0/255.0, blue: 0.0/255.0, alpha: 0.2)
        backgroundCardView.layer.shadowColor = shadowColor.cgColor
        backgroundCardView.layer.shadowOffset = CGSize(width: 0, height: 3.0)
        backgroundCardView.layer.shadowOpacity = 0.8
        
    }
    

}
