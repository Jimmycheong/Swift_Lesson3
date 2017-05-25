//
//  delegate2.swift
//  Lesson 3 challenge
//
//  Created by Jimmy Cheong on 24/05/2017.
//  Copyright © 2017 jimmycheong. All rights reserved.
//

import Foundation
import UIKit

class cashFieldDelegate : NSObject, UITextFieldDelegate {

    var pennies: String = ""
    
    override init () {
        
    }
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        
        var pennies:String = (textField.text)!
        
        if pennies == "$0.00" {
            
            let index = pennies.index(pennies.endIndex , offsetBy: -1)
            pennies = pennies.substring(to: index)
            print("Pennies: " + pennies)
            
        } else {

            let index2 = pennies.index(pennies.startIndex, offsetBy: 1)
            pennies = pennies.substring(from: index2)
            
            let penniesInt: Double? = Double(pennies)

            pennies = "$" + String(penniesInt! * Double(10))
            
            
        }
        textField.text = pennies
     
        return true
    }
}
