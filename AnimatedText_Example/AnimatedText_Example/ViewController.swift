//
//  ViewController.swift
//  AnimatedText_Example
//
//  Created by Rene Skov on 02/07/2020.
//  Copyright © 2020 Rene Skov. All rights reserved.
//

import UIKit
import AnimatedText

class ViewController: UIViewController {
    @IBOutlet weak var textview: AnimatedTextUITextView!
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var textLbl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    // MARK: animate lbl typing........
    @IBAction func AnimateLbl() {

        self.textLbl.typeText("animating Lable", typingSpeedPerChar: 0.03, didResetContent: true, completeCallback: {
            
        })
    }
    
    // MARK: animate textField typing........
       @IBAction func AnimateTextField() {

           self.textField.typeText("animating textfield", typingSpeedPerChar: 0.03, didResetContent: true, completeCallback: {
               
            })
       }
    
   @IBAction func startTyping(_ button:UIButton){
        // typing without any wrapping
        let message = "Lorem ipsum dolor sit er elit lamet, consectetaur cillium adipisicing pecu, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. "
        self.textview.typeText(message) {
          
        }
    }
    
    @IBAction func startTypingWithDelimiter(_ button:UIButton){
        // typing with wrapping words by " "
        let message = "Lorem ipsum dolor sit er elit lamet, consectetaur cillium adipisicing pecu, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. "
        self.textview.typeText(message, delimiter: " ", typingSpeedPerChar: 0.01, didResetContent: true) {
           
        }
    }
}

