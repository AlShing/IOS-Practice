//
//  ViewController.swift
//  Reminders
//
//  Created by Alibek on 8/11/17.
//  Copyright © 2017 Alibek. All rights reserved.
//

import UIKit
import UserNotifications
class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func btnPressed(_ sender: Any) {
        
        let yes = UNNotificationAction(identifier: "yes", title: "YES", options: .foreground)
        let no = UNNotificationAction(identifier: "no", title: "NO", options: .foreground)
        
        let category = UNNotificationCategory(identifier: "cat", actions: [yes,no], intentIdentifiers: [], options:.customDismissAction)
        UNUserNotificationCenter.current().setNotificationCategories([category])
        
        let content = UNMutableNotificationContent()
        content.title = "Test your IQ"
        content.body = "Is 3 bigger than 6"
        content.categoryIdentifier = "cat"
        
        let trigger = UNTimeIntervalNotificationTrigger(timeInterval: 5, repeats: false)
        let request = UNNotificationRequest(identifier: "any", content: content, trigger: trigger)
        UNUserNotificationCenter.current().add(request, withCompletionHandler: nil)
    }

}

