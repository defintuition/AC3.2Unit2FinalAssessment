//
//  FirstViewController.swift
//  AC3.2Unit2FinalAssessment
//
//  Created by Marcel Chaucer on 10/6/16.
//  Copyright © 2016 Marcel Chaucer. All rights reserved.
//

import UIKit

class ValuesViewController: UIViewController, UITextFieldDelegate {
    @IBOutlet weak var sliderOutlet: UISlider!
    @IBOutlet weak var stepperOutlet: UIStepper!
    @IBOutlet weak var labelOutlet: UILabel!
    @IBOutlet weak var textfieldOutlet: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        textfieldOutlet.delegate = self
        // Do any additional setup after loading the view, typically from a nib.
    }
    
        @IBAction func sliderAction(_ sender: UISlider) {
       stepperOutlet.value = Double(sender.value)
        labelOutlet.text = String(Int(sender.value))
        textfieldOutlet.text = String(Int(sender.value))
    }
    @IBAction func stepperAction(_ sender: UIStepper) {
        sliderOutlet.value = Float(sender.value)
        labelOutlet.text = String(Int(sender.value))
        textfieldOutlet.text = String(Int(sender.value))
    }
    
    //Could not figure out how to get textfield input to interact with Slider and Stepper
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if let textFieldText = textField.text, let doubleText = Double(textFieldText), let floatText = Float(textFieldText) {
            sliderOutlet.value = floatText
            stepperOutlet.value = doubleText
            labelOutlet.text = textFieldText
        }
        return true
    }
    
    
}

