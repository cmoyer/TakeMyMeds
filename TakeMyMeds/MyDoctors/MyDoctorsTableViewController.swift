//
//  MyDoctorsTableViewController.swift
//  TakeMyMeds
//
//  Created by Chad Moyer on 10/23/17.
//  Copyright © 2017 Chad Moyer. All rights reserved.
//

import UIKit

class MyDoctorsTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.estimatedRowHeight = 86
        tableView.rowHeight = UITableViewAutomaticDimension

    }


    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return doctorTestData.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "DoctorCell", for: indexPath) as! MyDoctorsTableViewCell
        let doctorData = doctorTestData[indexPath.row]
        
        cell.configureWithDoctorData(data: doctorData)

        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
