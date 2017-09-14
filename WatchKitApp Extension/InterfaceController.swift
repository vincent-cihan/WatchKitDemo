//
//  InterfaceController.swift
//  WatchKitApp Extension
//
//  Created by 刘乙灏 on 2017/9/14.
//  Copyright © 2017年 刘乙灏. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {
    @IBOutlet var guessSlider: WKInterfaceSlider!
    @IBOutlet var resultLabel: WKInterfaceLabel!
    @IBOutlet var guessLabel: WKInterfaceLabel!
    
    var guessNumber = 3
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        // Configure interface objects here.
    }
    
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }
    
    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

    @IBAction func updateGuess(_ value: Float) {
        guessNumber = Int(value * 5)
        guessLabel.setText("Your guess is: \(guessNumber)")
    }
    @IBAction func startGuess() {
        let randomNumber = Int(arc4random_uniform(6))
        
        if guessNumber == randomNumber {
            resultLabel.setText("Correct. You win!")
        } else {
            resultLabel.setText("Wrong. The number is \(randomNumber)")
        }
    }
}
