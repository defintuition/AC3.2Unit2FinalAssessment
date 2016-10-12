//
//  DetailColorViewController.swift
//  AC3.2Unit2FinalAssessment
//
//  Created by Ana Ma on 10/6/16.
//  Copyright © 2016 C4Q. All rights reserved.
//

import UIKit

class DetailColorViewController: UIViewController {
    var selectedColor: Crayon?
    
    //var crayonColor: Crayon?
    
    @IBOutlet weak var colorName: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        colorName.text = selectedColor!.name
        view.backgroundColor = UIColor(red: CGFloat(selectedColor!.red), green: CGFloat(selectedColor!.green), blue: CGFloat(selectedColor!.blue), alpha: 1.0)
        
        //colorName.text = "Some Color"
        
        //self.colorName.text = crayonColor!.name
        //view.backgroundColor = UIColor(red: CGFloat(cc.red), green: CGFloat(cc.green), blue: CGFloat(cc.blue), alpha: 1.0)
        
       // updateView(for: crayonColor?)
//        guard let cc = crayonColor else {return}
//        self.colorName.text = cc.name
//        view.backgroundColor = UIColor(red: CGFloat(cc.red), green: CGFloat(cc.green), blue: CGFloat(cc.blue), alpha: 1.0)
    }
    /*
    func updateView(for crayon: Crayon?) {
        self.colorName.text = crayon.name
        //return UIColor(red: CGFloat(crayon.red), green: CGFloat(crayon.green), blue: CGFloat(crayon.blue), alpha: 1.0)
    }
    */
    
//    func setupData () {
//        guard let cc = crayonColor else {return}
//        colorName.text = cc.name
//    }

 
}



