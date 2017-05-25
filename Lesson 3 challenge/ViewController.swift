//
//  ViewController.swift
//  Lesson 3 challenge
//
//  Created by Jimmy Cheong on 23/05/2017.
//  Copyright © 2017 jimmycheong. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    // MARK: Variables 
    
    @IBOutlet weak var zipField: UITextField!
    @IBOutlet weak var cashField: UITextField!
    @IBOutlet weak var lockTextField: UITextField!
    @IBOutlet weak var switchButton: UISwitch!

    // MARK : Delegates
    
    let zipDelegate = ZipCodeFieldDelegate()
    let cashDelegate = cashFieldDelegate()
    
    
    // MARK: Life Cycles
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        self.zipField.delegate = zipDelegate
        self.cashField.delegate = cashDelegate
        self.lockTextField.delegate = self
    
    }
    
    @IBAction func switchAction(_ sender: Any) {
        
        if switchButton.isOn == false {
            lockTextField.resignFirstResponder()
        }
    }

    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
     
        if switchButton.isOn == false {
            return false
        }
        return true
    }

}

