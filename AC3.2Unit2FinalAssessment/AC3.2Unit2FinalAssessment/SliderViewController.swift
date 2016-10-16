//
//  SliderViewController.swift
//  AC3.2Unit2FinalAssessment
//
//  Created by Margaret Ikeda on 10/6/16.
//  Copyright © 2016 Margaret Ikeda. All rights reserved.
//

import UIKit

class SliderViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var stepper: UIStepper!
    @IBOutlet weak var sliderLabel: UILabel!
    @IBOutlet weak var textField: UITextField!


    @IBAction func slideDidChange(_ sender: UISlider) {
        update(withValue: sender.value)
    }

    @IBAction func stepperDidChange(_ sender: UIStepper) {
        update(withValue: Float(sender.value))
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        textField.delegate = self
    }

    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        if let text = textField.text,
            let value = Float(text), 0...100 ~= value {
            update(withValue: value)
        }
        return true
    }

    func update(withValue value: Float) {
        slider.setValue(value, animated: true)
        sliderLabel.text = String(value)
        stepper.value = Double(value)
    }
}
