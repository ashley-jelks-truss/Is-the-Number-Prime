//
//  ViewController.swift
//  Is It Prime With Autolayout
//
//  Created by Ashley Jelks on 12/2/15.
//  Copyright © 2015 Ashley Jelks. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet var displayResultLabel: UILabel!
  
    @IBOutlet var numberTextField: UITextField!
    
    func initializeTextField() {
//    numberTextField.delegate = self
    numberTextField.keyboardType = UIKeyboardType.NumberPad
}
    
    
@IBAction func submitButton(sender: AnyObject) {
    
    
            
        /* 
        
        The Problem:
        
        To prevent the program from crashing, the program needs to check numberTextField for various
        values:
        
            1) That the user is not submitting an empty value/string
            2) That the user has submitted a value that can be converted from a String into an Int
            3) That the value of that converted Int is not less than 1 or greater than 3000000000 (or some number that isn't too big to make the program time out)
        
        
        
        */
    
        if let textValue = numberTextField.text {
            
            if let num = Int(textValue) {
                var isPrime = true
                
                if num == 2 {
                    
                    isPrime = true
                            }
                
                if num == 1 {
                    
                    isPrime = false
                            }
                    
                else {
                    
                    for var i = 2; i < num; i++ {
                        
                        if num % i == 0 {
                            isPrime = false
                                        }
                                                }
                    }
                
                if isPrime {
                    
                    displayResultLabel.text = "\(num) is a prime number!"
                }
                
                else {
                    
                    displayResultLabel.text = "\(num) is not a prime number!"
                }
            } else {
                displayResultLabel.text = "\(textValue) Is not a valid number!"
            }
        } else {
            displayResultLabel.text = "You need to type something!"
        } 
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        initializeTextField()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

