//
//  ViewController.swift
//  calculator
//
//  Created by Leonardo Rubiano on 17.12.18.
//  Copyright © 2018 leofofeo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var operationEnabled = false
    var isInputReset = true
    var alreadyDecimal = false
    var isAdditiveInverse = false
    var firstInput: Float = 0.0
    var secondInput: Float = 0.0
    
    @IBOutlet weak var displayLabel: UILabel!
    
    // Number Buttons Outlets
    @IBOutlet weak var zeroButton: UIButton!
    @IBOutlet weak var oneButton: UIButton!
    @IBOutlet weak var twoButton: UIButton!
    @IBOutlet weak var threeButton: UIButton!
    @IBOutlet weak var fourButton: UIButton!
    @IBOutlet weak var fiveButton: UIButton!
    @IBOutlet weak var sixButton: UIButton!
    @IBOutlet weak var sevenButton: UIButton!
    @IBOutlet weak var eightButton: UIButton!
    @IBOutlet weak var nineButton: UIButton!
    
    // Operations Buttons Outlets
    
    @IBOutlet weak var equalsButton: UIButton!
    @IBOutlet weak var addButton: UIButton!
    @IBOutlet weak var subtractButton: UIButton!
    @IBOutlet weak var multiplyButton: UIButton!
    @IBOutlet weak var divideButton: UIButton!
    
    //Modifier Buttons Outlets
    @IBOutlet weak var percentageButton: UIButton!
    @IBOutlet weak var oppositeButton: UIButton!
    @IBOutlet weak var resetButton: UIButton!
    @IBOutlet weak var periodButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func numberButtonTapped(_ sender: UIButton) {
        print(sender.tag)
        let inputValue = sender.tag
        
        // If in reset, don't accept 0 as the first integer
        if isInputReset && inputValue == 0 {
            print("from isInputReset && inputvalue")
            return
        }
        
        if isInputReset {
            displayLabel.text = ""
            isInputReset = false
        }
        
        displayInput(for: inputValue)
    }
    
    @IBAction func operationsButtonTapped(_ sender: UIButton) {
        print(sender.tag)
        print("from operationsButtonTapped()")
        
    }
    
    @IBAction func resetDisplay() {
        displayLabel.text = "0"
        isInputReset = true
        alreadyDecimal = false
        isAdditiveInverse = false
        print("from resetDisplay()")
    }
    
    @IBAction func displayAdditiveInverse(_ sender: UIButton) {
        if isInputReset {
            return
        }
        
        if let displayText = displayLabel?.text {
            if isAdditiveInverse {
                var newDisplayText = displayText
                newDisplayText.remove(at: displayText.startIndex)
                displayLabel?.text = newDisplayText
            } else {
                displayLabel?.text = "-" + (displayText)
            }
            isAdditiveInverse = !isAdditiveInverse
        }
    }
    
    @IBAction func operationTriggered(_ sender: UIButton) {
        startOperation(for: sender.tag)
    }
    
    func displayInput(for value: Int){
        print("from displayInput()")
        if alreadyDecimal && value == 10 {
            return
        }
        if value == 10 {
            alreadyDecimal = true
        }
        if operationEnabled {
            displayLabel.text = ""
            operationEnabled = false
        }
        let previousDisplay = displayLabel.text!
        let valueString = value == 10 ? "." : String(value)
        let displayLabelText = previousDisplay + "\(valueString)"
        
        displayLabel?.text = displayLabelText
        
    }
    
}

