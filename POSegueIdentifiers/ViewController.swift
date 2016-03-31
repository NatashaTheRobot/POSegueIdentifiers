//
//  ViewController.swift
//  POSegueIdentifiers
//
//  Created by Natasha Murashev on 12/18/15.
//  Copyright © 2015 NatashaTheRobot. All rights reserved.
//

import UIKit

class ViewController: UIViewController, SegueHandlerType {

    enum SegueIdentifier: String {
        case TheRedPillExperience
        case TheBluePillExperience
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        switch segueIdentifierForSegue(segue) {
            
        case .TheRedPillExperience:
            let redPillVC = segue.destinationViewController as? RedPillViewController
            redPillVC?.mainText = "😈"
        case .TheBluePillExperience:
            let bluePillVC = segue.destinationViewController as? BluePillViewController
            bluePillVC?.mainText = "👼"
        }
    }
    
    @IBAction func onRedPillButtonTap(sender: AnyObject) {
        performSegueWithIdentifier(.TheRedPillExperience, sender: self)
    }

    @IBAction func onBluePillButtonTap(sender: AnyObject) {
        performSegueWithIdentifier(.TheBluePillExperience, sender: self)
    }
}

