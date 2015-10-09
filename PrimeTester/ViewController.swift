//
//  ViewController.swift
//  PrimeTester
//
//  Created by Flatiron School on 9/21/15.
//  Copyright (c) 2015 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var enteredValue: UITextField!
    @IBOutlet weak var answerLabel: UILabel!
    @IBOutlet weak var imageOutput: UIImageView!
    var isPrime:Bool = true
    @IBAction func isPrimeTest(sender: AnyObject) {
        
       var enteredValueInt = Int(enteredValue.text!)
        
        for var i = 2; i < enteredValueInt; i++ {
                if enteredValueInt! % i == 0 {
                    isPrime = false
                    answerLabel.text = "Nope, not prime."
                    imageOutput.image = UIImage(named: "sad2.gif")
                    //imageOutput = AnimatedImage.animatedImageWithName("Sad2.gif")
                    print("\(isPrime)")
                    break
                    
                } else {
                    isPrime = true
                    imageOutput.image = UIImage(named: "smile.jpeg")


                }
            answerLabel.text = "You have a  prime!"
            print("\(isPrime)")
           
            
            }
        }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

