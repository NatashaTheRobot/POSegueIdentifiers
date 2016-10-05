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
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        switch segueIdentifierForSegue(segue) {
            
        case .TheRedPillExperience:
            let redPillVC = segue.destination as? RedPillViewController
            redPillVC?.inject("😈")
        case .TheBluePillExperience:
            let bluePillVC = segue.destination as? BluePillViewController
            bluePillVC?.inject("👼")
        }
    }
    
    @IBAction func onRedPillButtonTap(_ sender: AnyObject) {
        performSegueWithIdentifier(.TheRedPillExperience, sender: self)
    }

    @IBAction func onBluePillButtonTap(_ sender: AnyObject) {
        performSegueWithIdentifier(.TheBluePillExperience, sender: self)
    }
}

