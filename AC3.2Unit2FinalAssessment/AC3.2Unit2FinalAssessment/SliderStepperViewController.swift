//
//  SliderStepperViewController.swift
//  AC3.2Unit2FinalAssessment
//
//  Created by Cris on 10/6/16.
//  Copyright © 2016 Cris. All rights reserved.
//

import UIKit

class SliderStepperViewController: UIViewController, UITextFieldDelegate {
    
    var value = 0
    
    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        textField.delegate = self
        // Do any additional setup after loading the view.
    }
    let step: Float = 10
    @IBAction func slidder(_ sender: UISlider) {
        let roundedValue = round(sender.value / step) * step
        sender.value = roundedValue
        value = Int(sender.value)
        label.text = String(value)
    }
    
    @IBAction func stepper(_ sender: UIStepper) {
        value = Int(sender.value)
        label.text = String(value)
        
    }
    
    @IBOutlet weak var textField: UITextField!
    
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder() //Hide Keyboard
        return true
    }
    
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        if let text = textField.text {
            value = Int(text)!
            label.text = String(value)
        }
    }
    
    
}
