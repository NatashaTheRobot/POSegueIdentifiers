//
//  SegueHandlerType.swift
//  POSegueIdentifiers
//
//  Created by Natasha Murashev on 12/18/15.
//  Copyright © 2015 NatashaTheRobot. All rights reserved.
//

import UIKit
import Foundation

protocol SegueHandlerType {
    typealias SegueIdentifier: RawRepresentable
}

extension SegueHandlerType where Self: UIViewController,
    SegueIdentifier.RawValue == String
{
    
    func performSegueWithIdentifier(segueIdentifier: SegueIdentifier,
        sender: AnyObject?) {
        
        performSegueWithIdentifier(segueIdentifier.rawValue, sender: sender)
    }
    
    func segueIdentifierForSegue(segue: UIStoryboardSegue) -> SegueIdentifier {
            
        guard let identifier = segue.identifier,
            segueIdentifier = SegueIdentifier(rawValue: identifier) else { fatalError("Invalid segue identifier \(segue.identifier).") }
        
        return segueIdentifier
    }
}