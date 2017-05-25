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
        
        
        pennies = (textField.text)!
        var newText = pennies as NSString
        newText = newText.replacingCharacters(in: range, with: string) as NSString
        
        if pennies == "$0.00" {
        
            print("newText.length: " + String(newText.length))
            
            let index = pennies.index(pennies.startIndex, offsetBy: newText.length - 2)
            pennies = pennies.substring(to: index)
            print("Pennies: " + pennies)
            
        } else {
            print("Pennies is now:" + pennies)

            let index2 = pennies.index(pennies.startIndex, offsetBy: 1)
            pennies = pennies.substring(from: index2)
            
            
        }
        textField.text = pennies
     
        return true
    }
}
