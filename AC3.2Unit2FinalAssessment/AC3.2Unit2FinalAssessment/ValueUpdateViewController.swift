//
//  ValueUpdateViewController.swift
//  AC3.2Unit2FinalAssessment
//
//  Created by Ana Ma on 10/6/16.
//  Copyright © 2016 C4Q. All rights reserved.
//

import UIKit

class ValueUpdateViewController: UIViewController, UITextFieldDelegate{

    var ultimateValue = 0.0
    
    @IBOutlet weak var valueUpdateSlider: UISlider!
    @IBOutlet weak var valueUpdateStepper: UIStepper!
    @IBOutlet weak var valueDisplayLabel: UILabel!
    @IBOutlet weak var valueInputTextField: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        valueDisplayLabel.text = "0.0"
        valueInputTextField.delegate = self
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func sliderTapped(_ sender: UISlider) {
        ultimateValue = Double(Int(sender.value))
        valueDisplayLabel.text = "\(ultimateValue)"
        sender.setValue(Float(ultimateValue), animated: false)
        valueUpdateStepper.value = ultimateValue
        //valueDisplayLabel.text = "\(sender.value)" //float
    }
    
    @IBAction func stepperTapped(_ sender: UIStepper) {
        ultimateValue = sender.value
        valueDisplayLabel.text = "\(ultimateValue)"
        valueUpdateStepper.value = ultimateValue
        valueUpdateSlider.value = Float(ultimateValue)
        //ultimateValue = sender.stepValue
        //valueDisplayLabel.text = "\(sender.value)" //double
        //print(valueEnterTextField.text!)
    }
    
    @IBAction func textFieldInput(_ sender: UITextField) {
        valueDisplayLabel.text = sender.text
    }
    
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        if String(string) != nil && Double(string) == nil {
            valueDisplayLabel.text = "This is not a valid value"
            return true
        }
        return true
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField == valueInputTextField {
            if let double = Double(textField.text!){
                valueDisplayLabel.text = String(double)
                valueUpdateSlider.value = Float(double)
                valueUpdateStepper.value = double
             }
            print("\(textField.text!) \n\n ")
        }
        return true
    }
    
    //    func textFieldDidEndEditing(_ textField: UITextField, reason: UITextFieldDidEndEditingReason) {
    //        valueDisplayLabel.text = textField.text
    //        //print("ABC \n\n\n\n\n\n\n\n\n\n\n\n")
    //        //print(textField.text)
    //        //print(valueEnterTextField.text)
    //    }
    
   /*
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        valueEnterTextField.text = String(valueEnterTextField.text)
        if let double = Double(textField.text!) {
            valueEnterTextField.text = String(double)
            return true
        } else {
            valueEnterTextField.text = "This is not a valid value"
            return false
        }
    }
     */

}
