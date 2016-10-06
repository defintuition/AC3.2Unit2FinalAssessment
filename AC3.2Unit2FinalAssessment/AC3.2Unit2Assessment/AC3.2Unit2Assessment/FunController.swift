//
//  SecondViewController.swift
//  AC3.2Unit2FinalAssessment
//
//  Created by Marty Avedon on 10/6/16.
//  Copyright © 2016 Marty Hernandez Avedon. All rights reserved.
//

import UIKit

class FunController: UIViewController {

    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var stepper: UIStepper!
    @IBOutlet weak var textfield: UITextField!
    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func sliderSlides(_ sender: UISlider) {
        sender.setValue(floor(sender.value) + 1, animated: true)
        label.text = "Slider: \(sender.value)"
        
    }
    @IBAction func stepperSteps(_ sender: UIStepper) {
        if sender.value < 20 {
            label.text = "Stepper: \(sender.value)"
        } else {
        label.text = "Stepper: 20"
    }
        
        slider.setValue(Float(sender.value), animated: true)
    }
    @IBAction func textfieldTyping(_ sender: UITextField) {

    }


}

