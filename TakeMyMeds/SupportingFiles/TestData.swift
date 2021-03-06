//
//  TestData.swift
//  TakeMyMeds
//
//  Created by Chad Moyer on 10/23/17.
//  Copyright © 2017 Chad Moyer. All rights reserved.
//

import Foundation


var doctorTestData = [
    Doctor(name: "Northern Area Family Medicine", phone: "(412) 630-2670", address: "5700 Corporate Dr #700, Pittsburgh, PA 15237"),
    Doctor(name: "Borrero, Naguit, and Associates", phone: "(412) 469-8933", address: "575 Coal Valley Rd Ste 461 Jefferson Hills, PA 15025")
]

var medTestData = [
    Med(name: "Methamphetamine Hydrochloride", strength: "5mg", reminders: ["07:00 AM - Daily", "11:00 AM - Daily"]),
    Med(name: "Prozac", strength: "20mg", reminders: ["06:00 PM - Daily"]),
    Med(name: "Lisinopril", strength: "5mg", reminders: ["06:00 PM - Daily"]),
    Med(name: "Simvastatin", strength: "5mg", reminders: ["06:00 PM - Daily"])
]
