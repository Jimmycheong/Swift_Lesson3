//
//  delegate1.swift
//  Lesson 3 challenge
//
//  Created by Jimmy Cheong on 23/05/2017.
//  Copyright © 2017 jimmycheong. All rights reserved.
//

import Foundation
import UIKit

class ZipCodeFieldDelegate : NSObject, UITextFieldDelegate {

    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        
        // Figure out what the new text will be, if we return true
        var newText = textField.text! as NSString
        newText = newText.replacingCharacters(in: range, with: string) as NSString
  
        if newText.length <= 5 {
        
            return true
            
        }
        // returning true gives the text field permission to change its text
        
        return false
    }
    
}
