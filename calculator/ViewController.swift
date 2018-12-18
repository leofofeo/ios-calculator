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
        
        // if in reset, don't accept 0 as the first integer
        if isInputReset && inputValue == 0 {
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
    }
    
    @IBAction func resetDisplay() {
        displayLabel.text = "0"
        isInputReset = true
    }
    

    func displayInput(for value: Int){
        let previousDisplay = displayLabel.text!
        let displayLabelText = previousDisplay + "\(value)"
        displayLabel?.text = displayLabelText
    }
}

