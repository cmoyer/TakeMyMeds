//
//  MyDoctorsTableViewController.swift
//  TakeMyMeds
//
//  Created by Chad Moyer on 10/23/17.
//  Copyright © 2017 Chad Moyer. All rights reserved.
//

import UIKit

class MyDoctorsTableViewController: UITableViewController {

    var doctorButton = UIButton()
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.estimatedRowHeight = 86
        tableView.rowHeight = UITableViewAutomaticDimension
        
        // Set the various styles for our navigation bar.
        self.navigationController?.navigationBar.setBackgroundImage(UIImage(), for: UIBarMetrics.default)
        self.navigationController?.navigationBar.shadowImage = UIImage()
        self.navigationController?.navigationBar.isTranslucent = true
        self.navigationController?.navigationBar.tintColor = UIColor.white
        self.navigationController?.navigationBar.titleTextAttributes = [NSAttributedStringKey.font: UIFont(name: "OpenSans-SemiBold", size: 18) as Any]
        
        // add our image to the table view background
        let backgroundImage = UIImage(named: "FullBG")
        let imageView = UIImageView(image: backgroundImage)
        self.tableView.backgroundView = imageView
        
        // remove the extra blank cells at the bottom of our table
        self.tableView.tableFooterView = UIView()
        
        // Setup our floating doctor button
        self.doctorButton = UIButton(type: .custom)
        self.doctorButton.addTarget(self, action: #selector(ButtonClick(_:)), for: UIControlEvents.touchUpInside)
        self.view.addSubview(doctorButton)

    }

    
    override func viewWillLayoutSubviews() {
        // Set the styles and constraints for our floating add new doctor button
        doctorButton.layer.cornerRadius = 3.0
        doctorButton.clipsToBounds = true
        doctorButton.setImage(UIImage(named:"AddDocBtn"), for: .normal)
        doctorButton.translatesAutoresizingMaskIntoConstraints = false
        
        // Set the auto layout constraints for our button
        // Get the superview's layout
        let margins = super.tableView.backgroundView?.layoutMarginsGuide
        
//        doctorButton.topAnchor.constraint(equalTo: view.topAnchor, constant: 450).isActive = true
        doctorButton.bottomAnchor.constraint(equalTo: margins!.bottomAnchor)
        doctorButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        doctorButton.heightAnchor.constraint(equalToConstant: 70).isActive = true
        doctorButton.widthAnchor.constraint(equalToConstant: 355).isActive = true
        
    }
    
    @IBAction func ButtonClick(_ sender: UIButton) {
        // Segue to the new doctor screen
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
