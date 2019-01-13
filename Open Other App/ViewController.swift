//
//  ViewController.swift
//  Open Other App
//
//  Created by Prashant G on 1/13/19.
//  Copyright © 2019 Prashant G. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    
    @IBAction func gotoNewAppAction(_ sender: Any) {
        let application = UIApplication.shared
        let secondAppPath = "secondaryApp://"
        let appUrl = URL(string: secondAppPath)!
        let websiteUrl = URL(string: "https://www.google.com")!
        
        if application.canOpenURL(appUrl) {
            application.open(appUrl, options: [:], completionHandler: nil)
        }
        else{
            application.open(websiteUrl)
        }
    }
    
}

