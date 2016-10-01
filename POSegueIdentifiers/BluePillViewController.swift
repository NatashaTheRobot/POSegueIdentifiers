//
//  BluePillViewController.swift
//  POSegueIdentifiers
//
//  Created by Natasha Murashev on 3/31/16.
//  Copyright © 2016 NatashaTheRobot. All rights reserved.
//

import UIKit

class BluePillViewController: UIViewController, Injectable {

    @IBOutlet weak fileprivate var mainLabel: UILabel!
    
    typealias T = String
    fileprivate var mainText: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        assertDependencies()
        mainLabel.text = mainText
    }

    // Injectable
    func inject(_ thing: T) {
        mainText = thing
    }
    
    func assertDependencies() {
        assert(mainText != nil)
    }
}
