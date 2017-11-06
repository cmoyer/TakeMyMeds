//
//  MedModel.swift
//  TakeMyMeds
//
//  Created by Chad Moyer on 11/6/17.
//  Copyright © 2017 Chad Moyer. All rights reserved.
//

import Foundation

class Med {
    let name: String
    let strength: String
    let reminders: [String]
    
    init(name: String, strength: String, reminders: [String]) {
        self.name = name
        self.strength = strength
        self.reminders = reminders
    }
}
