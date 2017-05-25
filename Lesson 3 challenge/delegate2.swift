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
    
    override init(){
        var pennies : String = "lemons"
    }
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {

//        var newString: String
//        newString = "$" + (textField.text)!
        textField.text = self.pennies
        return true
        
    }
}
