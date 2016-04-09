//
//  RedPillViewController.swift
//  POSegueIdentifiers
//
//  Created by Natasha Murashev on 3/31/16.
//  Copyright © 2016 NatashaTheRobot. All rights reserved.
//

import UIKit

protocol Injectable {

    associatedtype T
    func inject(thing: T)
    func assertDependencies()
}

class RedPillViewController: UIViewController, Injectable {

    @IBOutlet weak private var mainLabel: UILabel!
    
    typealias T = String
    
    // this is my original dependency (IOU)
    // I can now make this private!
    private var mainText: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // this will crash if the IOU is not set
        assertDependencies()
        
        
        mainLabel.text = mainText
    }
    
    // Injectable
    func inject(thing: T) {
        mainText = thing
    }
    
    func assertDependencies() {
        assert(mainText != nil)
    }
}
