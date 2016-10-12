//
//  SecondViewController.swift
//  AC3.2Unit2FinalAssessment
//
//  Created by Marcel Chaucer on 10/6/16.
//  Copyright © 2016 Marcel Chaucer. All rights reserved.
//

import UIKit

class CrayonViewController: UIViewController {

    @IBOutlet weak var colorLabel: UILabel!
    var detailCrayon: Crayon?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let color = detailCrayon {
        self.view.backgroundColor = UIColor(red: CGFloat(color.red), green: CGFloat(color.green), blue: CGFloat(color.blue), alpha: 1.0)
            self.colorLabel.text = color.name
            if self.colorLabel.text == "Black" {
                self.colorLabel.textColor = UIColor.white
            }
        // Do any additional setup after loading the view, typically from a nib.
    }
}

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

