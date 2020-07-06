//
//  ViewController.swift
//  AnimatedText_Example
//
// The MIT License (MIT)
//
//  Created by Rene Skov on 02/07/2020.
//
// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the "Software"), to deal
// in the Software without restriction, including without limitation the rights
// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
// copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:
//
// The above copyright notice and this permission notice shall be included in all
// copies or substantial portions of the Software.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
// SOFTWARE.

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
    
    // MARK: animate textView typing........
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

