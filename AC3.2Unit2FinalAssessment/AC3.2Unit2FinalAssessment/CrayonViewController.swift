//
//  CrayonViewController.swift
//  AC3.2Unit2FinalAssessment
//
//  Created by Cris on 10/6/16.
//  Copyright © 2016 Cris. All rights reserved.
//

import UIKit

class CrayonViewController: UIViewController {
    
    @IBOutlet weak var colorLabel2: UILabel!
    
    var color: Crayon?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setUpData()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func setUpData() {
        guard let col = color else {return}
        colorLabel2.text = col.name
    }
    
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destinationViewController.
     // Pass the selected object to the new view controller.
     }
     */
    
}
