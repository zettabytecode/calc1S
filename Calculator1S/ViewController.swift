//
//  ViewController.swift
//  Calculator1S
//
//  Created by Ola Babalola on 3/3/17.
//  Copyright © 2017 Ola Babalola. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var display: UILabel?
    
    var userIsInTheMiddleOfTyping = false
    
    @IBAction func touchDigit(_ sender: UIButton) {
        let digit = sender.currentTitle!
        if userIsInTheMiddleOfTyping {
            let textCurrentlyInDisplay = display!.text!
            display!.text = textCurrentlyInDisplay + digit
            
            
        } else {
            display!.text = digit
            userIsInTheMiddleOfTyping = true
        }
        
    }
    
    @IBAction func performOperaton(_ sender: UIButton) {
        userIsInTheMiddleOfTyping = false
        if let mathematicalSymbol = sender.currentTitle {
            switch mathematicalSymbol {
            case "π":
                display!.text = String(Double.pi)
            case "√":
                let operand = Double(display!.text!)!
                display!.text = String(sqrt(operand))
            default:
                break
            }
        }
    }

}

