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
    
    func configureWithDoctorData(data: Doctor) {
        let docName = data.name
        let docPhone = data.phone
        let docAddress = data.address
        
        doctorLabel.text = docName
        phoneLabel.text = docPhone
        addressLabel.text = docAddress
    }
    

}
