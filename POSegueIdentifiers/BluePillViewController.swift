//
//  BluePillViewController.swift
//  POSegueIdentifiers
//
//  Created by Natasha Murashev on 3/31/16.
//  Copyright © 2016 NatashaTheRobot. All rights reserved.
//

import UIKit

class BluePillViewController: UIViewController {

    @IBOutlet weak private var mainLabel: UILabel!
    
    var mainText: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        mainLabel.text = mainText
    }

}
