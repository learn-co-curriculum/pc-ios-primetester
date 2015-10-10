//
//  ViewController.swift
//  PrimeTester
//
//  Created by Flatiron School on 9/21/15.
//  Copyright (c) 2015 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UIPickerViewDataSource, UIPickerViewDelegate {

    @IBOutlet weak var pickerVIew: UIPickerView!
    @IBOutlet weak var enteredValue: UITextField!
    @IBOutlet weak var answerLabel: UILabel!
    @IBOutlet weak var imageOutput: UIImageView!
    var isPrime:Bool = true
    var isEven: Bool = true
    var isEvenGame:Bool = true
    let gameOptions = ["Prime Tester", "Even Tester"]
    @IBAction func isPrimeTest(sender: AnyObject) {
        if isEvenGame {
            checkIfEven()
        } else {
            checkIfPrime()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.pickerVIew.delegate = self;
        self.pickerVIew.dataSource = self;
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }

    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return gameOptions.count;
    }

    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return gameOptions[row]
    }

    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        if(row == 0) {
            isEvenGame = false
        } else {
            isEvenGame = true
        }
    }

    func checkIfEven() {
        let enteredValueInt = Int(enteredValue.text!)
        if let enteredValueInt = enteredValueInt {
            if enteredValueInt % 2 == 0 {
                isEven = true
                answerLabel.text = "Even!"
                imageOutput.image = UIImage(named: "smile.jpeg")
            } else {
                isEven = false
                answerLabel.text = "Nope, not even."
                imageOutput.image = UIImage(named: "sad2.gif")
            }
        }
    }

    func checkIfPrime() {
        let enteredValueInt = Int(enteredValue.text!)
        if let enteredValueInt = enteredValueInt {
            for var i = 2; i < enteredValueInt; i++ {
                if enteredValueInt % i == 0 {
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
    }
}

