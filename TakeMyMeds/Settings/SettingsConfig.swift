//
//  SettingsConfig.swift
//  TakeMyMeds
//
// This file contains the configuration for the settings page.
// headerTitles is an array of the section headers.
// settingsData is a multidimensional array containing the row data for each of the sections.
//
//  Created by Chad Moyer on 10/17/17.
//  Copyright © 2017 Chad Moyer. All rights reserved.
//


// CHANGE TO THIS METHOD: https://stackoverflow.com/questions/29578965/how-do-i-populate-two-sections-in-a-tableview-with-two-different-arrays-using-sw/29579027#29579027

struct SettingsItem {
    let title: String
    let icon: String
}

var headerTitles = ["Account", "Application", "Misc"]

var settingsData = [[SettingsItem(title: "Edit Login Information", icon: "EditLoginIcon"), SettingsItem(title: "Push Notifications", icon: "PushNotificationsIcon")],
                    [SettingsItem(title: "FAQ", icon: "FAQIcon"), SettingsItem(title: "Found a bug? Let us know!", icon: "BugIcon"), SettingsItem(title: "Rate the application", icon: "RateIcon")],
                    [SettingsItem(title: "Privacy Policy", icon: "PrivacyIcon"), SettingsItem(title: "Terms & Conditions", icon: "TermsIcon"), SettingsItem(title: "Acknowledgements & Attributions", icon: "AttributionsIcon")]
]



