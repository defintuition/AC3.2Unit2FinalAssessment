//
//  SecondViewController.swift
//  AC3.2Unit2FinalAssessment
//
//  Created by Marty Avedon on 10/6/16.
//  Copyright © 2016 Marty Hernandez Avedon. All rights reserved.
//

import UIKit

class FunController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var stepper: UIStepper!
    @IBOutlet weak var textfield: UITextField!
    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        textfield.delegate = self
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func sliderSlides(_ sender: UISlider) {
        sender.setValue(floor(sender.value) + 1, animated: true)
        label.text = "Slider: \(Int(sender.value))"
        textfield.text = String(Int(sender.value))
    }
    
    @IBAction func stepperSteps(_ sender: UIStepper) {
        // does it make sense for this to update when slider updates when the values in the stepper are not visible? do we need labels for each?
        if sender.value <= 20 {
            label.text = "Stepper: \(Int(sender.value))"
            textfield.text = String(Int(sender.value))
        } else {
        label.text = "Stepper: 20"
    }
        
        slider.setValue(Float(sender.value), animated: true)
    }
    
    // Textfield typing below
    
    @IBAction func textfieldTyping(_ sender: UITextField) {
        // These 3 are from http://stackoverflow.com/questions/24171857/implementing-uitextfielddelegate-with-swift
        func textFieldDidBeginEditing(textField: UITextField!) {    //delegate method
            print("TextField did begin editing method called")
        }
        func textFieldShouldEndEditing(textField: UITextField!) -> Bool {  //delegate method
            print("TextField should end editing method called")
            return false
        }
        func textFieldShouldReturn(textField: UITextField!) -> Bool {   //delegate method
            textField.resignFirstResponder()
            print("TextField should return editing method called")
            return true
        }
        
        var text:String? = textfield.text
        if let unwrapText = text {
            label.text = "User typed: \(unwrapText)"
            let floatCast:Float? = Float(unwrapText)
            if let unwrapFloat = floatCast {
                if unwrapFloat < 20 {
                    slider.setValue(unwrapFloat, animated: true)
                }
            } else {
                label.text = "User typed: mu"
            }
        
        }
    }
}
