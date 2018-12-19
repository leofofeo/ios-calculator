//
//  Operations.swift
//  calculator
//
//  Created by Leonardo Rubiano on 18.12.18.
//  Copyright © 2018 leofofeo. All rights reserved.
//

import Foundation

enum Operation {
    case equals
    case add
    case subtract
    case multiply
    case divide
}


extension ViewController {
    
    func startOperation(for valueTag: Int) {
        if isInputReset {
            return
        }
        operationEnabled = true
        let displayValue = displayLabel?.text
        if let displayValue = displayValue {
            firstInput = Float(displayValue) ?? 0.0
        }
    }

    func add(_ first: Float, _ second: Float) -> Float {
        return first + second
    }
    
    func subtract(_ first: Float, _ second: Float) -> Float {
        return first - second
    }
    
    func divide(_ first: Float, _ second: Float) -> Float {
        return first / second
    }
    
    func multiply (_ first: Float, _ second: Float) -> Float {
        return first * second
    }
}
